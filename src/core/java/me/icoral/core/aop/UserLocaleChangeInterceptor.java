package me.icoral.core.aop;

import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.LocaleEditor;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.support.RequestContextUtils;

public class UserLocaleChangeInterceptor extends LocaleChangeInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws ServletException {
		String newLocale = request.getParameter(getParamName());
		if (newLocale == null) {
			newLocale = "zh_CN";
		}

		if (!newLocale.equals(request.getSession().getAttribute("language"))) {
			reSetSessionLocale(request, response, newLocale);
		}

		return true;
	}

	private void reSetSessionLocale(HttpServletRequest request, HttpServletResponse response, String newLocale) {
		request.getSession().setAttribute("language", newLocale);

		LocaleResolver localeResolver = RequestContextUtils.getLocaleResolver(request);
		if (localeResolver == null) {
			throw new IllegalStateException();
		}

		LocaleEditor localeEditor = new LocaleEditor();
		localeEditor.setAsText(newLocale);
		localeResolver.setLocale(request, response, (Locale) localeEditor.getValue());
	}

}