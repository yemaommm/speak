package me.icoral.web.listener;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.icoral.web.security.Passport;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginSuccessHandle implements AuthenticationSuccessHandler {

	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;

		Passport user = (Passport) authentication.getPrincipal();
		if (user.isAdmin()) {
			response.sendRedirect(basePath + "/admin");
		} else {
			response.sendRedirect(basePath + "/user");
		}
	}

}