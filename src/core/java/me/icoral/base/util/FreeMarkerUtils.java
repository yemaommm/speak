package me.icoral.base.util;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.net.URL;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class FreeMarkerUtils {

	static Configuration cfg = new Configuration();

	static {
		URL url = FreeMarkerUtils.class.getClassLoader().getResource("ftl");
		try {
			cfg.setDirectoryForTemplateLoading(new File(url.getFile()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		cfg.setObjectWrapper(new DefaultObjectWrapper());
		cfg.setDefaultEncoding("UTF-8");
	}

	public static String process(String templateName, Object data) {
		String result = null;
		Template template = getTemplate(cfg, templateName);
		try {
			result = process(template, data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	private static String process(Template temp, Object data) throws TemplateException, IOException {
		StringWriter writer = new StringWriter();
		try {
			temp.process(data, writer);
		} finally {
			writer.close();
		}
		return writer.getBuffer().toString();
	}

	protected static Template getTemplate(Configuration cfg, String templateName) {
		Template temp = null;
		try {
			temp = cfg.getTemplate(templateName);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return temp;
	}

}