package me.icoral.core.db.exception;

@SuppressWarnings("serial")
public class NotAuthorizedException extends BaseException {

	public NotAuthorizedException(String msg) {
		this.message = msg;
	}

}