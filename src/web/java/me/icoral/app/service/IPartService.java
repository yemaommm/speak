package me.icoral.app.service;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

public interface IPartService {

	public String createPartSelf(JSONObject json, HttpServletRequest request) throws Exception;

	public String createPartPoint(JSONObject json, HttpServletRequest request) throws Exception;

	public String createPartExam(JSONObject json, HttpServletRequest request) throws Exception;

	public JSONObject listPartSelf(String sn, HttpServletRequest request);

	public JSONObject listPartPoint(String sn, HttpServletRequest request);

	public JSONObject listPartExam(String sn, HttpServletRequest request);

}