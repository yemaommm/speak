package me.icoral.web.security;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import me.icoral.core.db.entity.User;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class Passport extends User implements UserDetails {

	private static final long serialVersionUID = -3118315835681279229L;
	private Set<GrantedAuthority> authorities;
	private Set<String> grantedResource;

	public Passport(String username) {
		this.username = username;
	}

	public Passport(User user) {
		try {
			BeanUtils.copyProperties(this, user);
		} catch (Exception e) {
			e.printStackTrace();
		}

		this.authorities = new HashSet<GrantedAuthority>();
		this.grantedResource = new HashSet<String>();

		if (user.getRole() != null) {
			if (user.getRole().getResources() != null) {
				String[] res = user.getRole().getResources().split(",");
				for (int i = 0; i < res.length; i++) {
					this.authorities.add(new GrantedAuthorityImpl(res[i]));
					this.grantedResource.add(res[i]);
				}
			}
		}
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return this.authorities;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Set<String> getGrantedResource() {
		return grantedResource;
	}

}