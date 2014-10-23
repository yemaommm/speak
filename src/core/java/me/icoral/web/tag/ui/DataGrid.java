package me.icoral.web.tag.ui;

import java.util.Map;
import java.util.ResourceBundle;

import me.icoral.base.util.BaseUtils;
import me.icoral.web.tag.WebUiTag;

@SuppressWarnings("serial")
public class DataGrid extends WebUiTag {

	protected String objName;
	protected String columns;

	public String getObjName() {
		return objName;
	}

	public void setObjName(String objName) {
		this.objName = objName;
	}

	public String getColumns() {
		return columns;
	}

	public void setColumns(String columns) {
		this.columns = columns;
	}

	@Override
	public Map<String, Object> getData() {
		String locale = (String) getSession().getAttribute("language");
		ResourceBundle resourceBundle = BaseUtils.resourceBundles.get(locale);

		Map<String, Object> data = super.getData();
		String[] column = columns.split(",");
		data.put("columns", column);
		String[] title = new String[column.length];

		for (int i = 0; i < column.length; i++) {
			if (resourceBundle.containsKey(objName + "." + column[i])) {
				title[i] = resourceBundle.getString(objName + "." + column[i]);
			} else {
				title[i] = column[i];
			}
		}

		data.put("titles", title);
		return data;
	}

	@Override
	public String getTemplate() {
		return "ui-datagrid.ftl";
	}

}