package me.icoral.web.tag;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

@SuppressWarnings("serial")
public abstract class BaseTag extends BodyTagSupport {

	protected JspWriter getOut() {
		JspWriter out = pageContext.getOut();
		return out;
	}

	protected void print(String output) {
		JspWriter out = getOut();
		try {
			out.println(output);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public HttpServletRequest getRequest() {
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
		return request;
	}

	public HttpServletResponse getResponse() {
		HttpServletResponse response = (HttpServletResponse) pageContext.getResponse();
		return response;
	}

	public HttpSession getSession() {
		HttpSession session = (HttpSession) pageContext.getSession();
		return session;
	}

}