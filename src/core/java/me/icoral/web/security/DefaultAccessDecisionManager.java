package me.icoral.web.security;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import me.icoral.web.security.filter.IDataFilter;

import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.FilterInvocation;

public class DefaultAccessDecisionManager implements AccessDecisionManager {

	Map<String, IDataFilter> dataFilters = new HashMap<String, IDataFilter>();

	public void decide(Authentication authentication, Object object, Collection<ConfigAttribute> configAttributes) throws AccessDeniedException, InsufficientAuthenticationException {

		Object principal = authentication.getPrincipal();
		if (principal instanceof Passport) {
			Passport passport = (Passport) principal;
			if (passport.isAdmin()) {
				return;
			}

			Iterator<String> gr = passport.getGrantedResource().iterator();
			String permission = configAttributes.iterator().next().getAttribute();
			while (gr.hasNext()) {
				Pattern p = Pattern.compile(gr.next());
				Matcher m = p.matcher(permission);
				if (m.matches()) {
					return;
				}
			}

			if (object instanceof FilterInvocation) {
				FilterInvocation fitler = (FilterInvocation) object;
				Iterator<String> it = dataFilters.keySet().iterator();

				String requestUrl = fitler.getRequestUrl();

				while (it.hasNext()) {
					String key = it.next();
					IDataFilter dataFilter = dataFilters.get(key);
					if (!dataFilter.check(requestUrl, passport)) {
						throw new AccessDeniedException("Access Denied.");
					}
				}
			}
		}

		throw new AccessDeniedException("Access Denied.");
	}

	public boolean supports(ConfigAttribute attribute) {
		return true;
	}

	public boolean supports(Class<?> clazz) {
		return true;
	}

	public Map<String, IDataFilter> getDataFilters() {
		return dataFilters;
	}

	public void setDataFilters(Map<String, IDataFilter> dataFilters) {
		this.dataFilters = dataFilters;
	}

}