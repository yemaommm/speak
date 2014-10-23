package me.icoral.web.tag;

import java.util.Map;

import javax.servlet.jsp.JspException;

import me.icoral.base.util.BaseUtils;

@SuppressWarnings("serial")
public class SnGen extends WebUiTag {

	@Override
	public String getTemplate() {
		return "sngen.ftl";
	}

	@Override
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	@Override
	public Map<String, Object> getData() {
		Map<String, Object> data = super.getData();

		String sn = BaseUtils.createUUID();
		data.put("sn", sn);
		data.put("name", name);
		return data;
	}

}