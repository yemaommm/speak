package me.icoral.web.tag;

import java.util.Map;

import javax.servlet.jsp.JspException;

import me.icoral.base.util.BaseUtils;

@SuppressWarnings("serial")
public class Token extends WebUiTag {

	@Override
	public String getTemplate() {
		return "token.ftl";
	}

	@Override
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	@Override
	public Map<String, Object> getData() {
		Map<String, Object> data = super.getData();

		String token = BaseUtils.createUUID();
		data.put("token", token);
		getSession().setAttribute("seToken", token);

		return data;
	}

}