package me.icoral.web.tag;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.jsp.JspException;

import me.icoral.base.util.FreeMarkerUtils;
import me.icoral.base.util.ServerConfig;
import me.icoral.core.db.entity.AbstractPo;
import me.icoral.web.security.Passport;

@SuppressWarnings("serial")
public abstract class WebUiTag extends BaseTag {

	protected Map<String, Object> data;
	protected String id;
	protected String name;
	protected String template;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public abstract String getTemplate();

	public void setTemplate(String template) {
		this.template = template;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	public Map<String, Object> getData() {
		data = new HashMap<String, Object>();
		data.put("contextPath", getRequest().getContextPath());
		data.put("domainName", ServerConfig.getProperty("DOMAIN_NAME"));
		data.put("id", id);
		data.put("name", name);

		Passport passport = AbstractPo.getPassport();
		if (passport == null) {
			passport = new Passport("annoymous");
		}
		data.put("passport", passport);
		return data;
	}

	@Override
	public int doStartTag() throws JspException {
		String result = FreeMarkerUtils.process(getTemplate(), getData());
		print(result);
		return EVAL_PAGE;
	}

	@Override
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

}