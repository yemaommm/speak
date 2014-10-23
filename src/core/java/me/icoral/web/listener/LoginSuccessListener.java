package me.icoral.web.listener;

import java.util.Date;

import me.icoral.core.db.entity.LoginInfo;
import me.icoral.core.service.ISecurityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetails;

@SuppressWarnings("rawtypes")
public class LoginSuccessListener implements ApplicationListener {

	@Autowired
	private ISecurityService securityService;

	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		if (event instanceof AuthenticationSuccessEvent) {
			AuthenticationSuccessEvent authEvent = (AuthenticationSuccessEvent) event;

			WebAuthenticationDetails wauth = (WebAuthenticationDetails) authEvent.getAuthentication().getDetails();
			UserDetails user = (UserDetails) authEvent.getAuthentication().getPrincipal();

			LoginInfo info = new LoginInfo();
			info.setUsername(user.getUsername());
			info.setIp(wauth.getRemoteAddress());
			info.setSessionid(wauth.getSessionId());
			info.setLogin(new Date());

			securityService.createaLoginInfo(info);
		}
	}

}