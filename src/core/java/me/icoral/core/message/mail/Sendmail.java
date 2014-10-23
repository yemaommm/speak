package me.icoral.core.message.mail;

import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

import me.icoral.core.db.dao.BaseDao;

public class Sendmail {

	private final static String MIMETYPE = "text/html; charset=gb2312";

	private BaseDao dao = null;

	public BaseDao getDao() {
		return dao;
	}

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}

	@SuppressWarnings("rawtypes")
	private static MimeMessage build(Mail mail, MimeMessage msg) throws Exception {
		Multipart mPart = new MimeMultipart();

		msg.setFrom(new InternetAddress(MimeUtility.encodeText(mail.screenname) + "<" + mail.from + ">"));
		InternetAddress[] address = InternetAddress.parse(mail.to);
		msg.setRecipients(Message.RecipientType.TO, address);

		if (mail.cc != null) {
			InternetAddress[] ccaddress = InternetAddress.parse(mail.cc);
			msg.setRecipients(Message.RecipientType.CC, ccaddress);
		}

		if (mail.bcc != null) {
			InternetAddress[] bccaddress = InternetAddress.parse(mail.bcc);
			msg.setRecipients(Message.RecipientType.BCC, bccaddress);
		}

		msg.setSubject(mail.subject);

		InternetAddress[] replyAddress = { new InternetAddress(mail.from) };
		msg.setReplyTo(replyAddress);

		MimeBodyPart mBodyContent = new MimeBodyPart();
		mBodyContent.setContent(mail.content, MIMETYPE);
		mPart.addBodyPart(mBodyContent);

		if (mail.attachments != null) {
			for (Enumeration fileList = mail.attachments.elements(); fileList.hasMoreElements();) {
				String filename = (String) fileList.nextElement();
				MimeBodyPart mBodyPart = new MimeBodyPart();

				FileDataSource fds = new FileDataSource(filename);
				mBodyPart.setDataHandler(new DataHandler(fds));
				mBodyPart.setFileName(filename);
				mPart.addBodyPart(mBodyPart);
			}
		}
		msg.setContent(mPart);
		msg.setSentDate(new Date());
		return msg;
	}

	@SuppressWarnings("static-access")
	public static void send(Smtp smtp, Mail mail) throws Exception {
		if (smtp.host.indexOf(":") != -1) {
			smtp.host = smtp.host.substring(0, smtp.host.indexOf(":"));
			smtp.port = smtp.host.substring(smtp.host.indexOf(":") + 1);
		} else {
			smtp.port = "25";
		}

		Properties props = System.getProperties();
		props.put("mail.smtp.host", smtp.host);
		props.put("mail.smtp.port", smtp.port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.timeout", "30000");
		props.put("mail.smtp.starttls.enable", "true");

		MailAuthenticator auth = new MailAuthenticator(smtp.username, smtp.password);

		Session session = Session.getInstance(props, auth);
		MimeMessage msg = new MimeMessage(session);
		Transport trans = null;
		try {
			build(mail, msg);
			trans = session.getTransport("smtp");
			trans.connect();
			trans.send(msg);
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			trans.close();
		}
	}

	public static boolean test(Smtp smtp) {
		Properties props = System.getProperties();
		props.put("mail.smtp.host", smtp.host);
		props.put("mail.smtp.port", smtp.port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.timeout", "30000");

		MailAuthenticator auth = new MailAuthenticator(smtp.username, smtp.password);

		Session session = Session.getInstance(props, auth);
		Transport trans = null;

		boolean success = false;
		try {
			trans = session.getTransport("smtp");
			trans.connect();
			success = true;
		} catch (Exception ex) {
			System.err.println(ex);
		} finally {
			try {
				trans.close();
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
		return success;
	}

}