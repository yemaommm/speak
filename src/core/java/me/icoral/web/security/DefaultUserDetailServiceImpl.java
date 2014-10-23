package me.icoral.web.security;

import me.icoral.core.db.entity.User;
import me.icoral.core.service.ISecurityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class DefaultUserDetailServiceImpl implements UserDetailsService {

	@Autowired
	private ISecurityService securityService;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = securityService.findUserByUsername(username);

		if (user == null) {
			throw new UsernameNotFoundException("user not found");
		}

		Passport passport = new Passport(user);
		return passport;
	}

}