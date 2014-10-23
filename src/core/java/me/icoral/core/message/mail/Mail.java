package me.icoral.core.message.mail;

import java.util.Vector;

public class Mail {

	public String from = null;
	public String screenname = null;
	public String to = null;
	public String cc = null;
	public String bcc = null;
	public String subject;
	public String content;

	@SuppressWarnings("rawtypes")
	public Vector attachments;

}