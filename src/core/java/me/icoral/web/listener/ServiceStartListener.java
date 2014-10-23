package me.icoral.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServiceStartListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("over");
	}

	public void contextInitialized(ServletContextEvent servletContextEvent) {
		System.out.println("start");
	}

}