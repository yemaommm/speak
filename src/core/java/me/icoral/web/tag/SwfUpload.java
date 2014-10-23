package me.icoral.web.tag;

import java.util.Map;

import javax.servlet.jsp.JspException;

import me.icoral.base.util.ServerConfig;

@SuppressWarnings("serial")
public class SwfUpload extends WebUiTag {

	protected String id;
	protected String width;
	protected String height;

	protected String success;
	protected String error;
	protected String maxSize;
	protected String catalog;
	protected String progress;
	protected String prepare;
	protected String label;
	protected String fileExtFilter;
	protected String fileNameFilter;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getMaxSize() {
		return maxSize;
	}

	public void setMaxSize(String maxSize) {
		this.maxSize = maxSize;
	}

	public String getSuccess() {
		return success;
	}

	public void setSuccess(String success) {
		this.success = success;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getCatalog() {
		return catalog;
	}

	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	public String getPrepare() {
		return prepare;
	}

	public void setPrepare(String prepare) {
		this.prepare = prepare;
	}

	public String getFileExtFilter() {
		return fileExtFilter;
	}

	public void setFileExtFilter(String fileExtFilter) {
		this.fileExtFilter = fileExtFilter;
	}

	public String getFileNameFilter() {
		return fileNameFilter;
	}

	public void setFileNameFilter(String fileNameFilter) {
		this.fileNameFilter = fileNameFilter;
	}

	@Override
	public String getTemplate() {
		return "swfupload.ftl";
	}

	@Override
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	@Override
	public Map<String, Object> getData() {
		Map<String, Object> data = super.getData();

		data.put("id", id);
		data.put("success", success);
		data.put("error", error);
		data.put("progress", progress);
		data.put("prepare", prepare);
		data.put("label", label);
		data.put("catalog", catalog);
		int offset = 1;

		if (maxSize.endsWith("KB")) {
			offset = 1000;
			maxSize = maxSize.substring(0, maxSize.length() - 2);
		} else if (maxSize.endsWith("MB")) {
			maxSize = maxSize.substring(0, maxSize.length() - 2);
			offset = 1000000;
		} else if (maxSize.endsWith("GB")) {
			maxSize = maxSize.substring(0, maxSize.length() - 2);
			offset = 1000000000;
		}

		maxSize = String.valueOf(Integer.parseInt(maxSize) * offset);

		data.put("maxSize", maxSize);
		data.put("width", width);
		data.put("height", height);
		data.put("fileNameFilter", fileNameFilter);
		data.put("fileExtFilter", fileExtFilter);
		data.put("contextPath", getRequest().getContextPath());
		String uploadServer = ServerConfig.getProperty("upload.server");
		data.put("uploadServer", uploadServer);

		String downloadUrl = ServerConfig.getProperty("upload.downloadurl");
		data.put("downloadUrl", downloadUrl);

		return data;
	}

}