package me.icoral.core.db.exception;

@SuppressWarnings("serial")
public class NoSuchEntityException extends BaseException {

	public NoSuchEntityException(String msg) {
		this.message = msg;
	}

}