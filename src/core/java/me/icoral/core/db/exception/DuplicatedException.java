package me.icoral.core.db.exception;

@SuppressWarnings("serial")
public class DuplicatedException extends BaseException {

	public DuplicatedException(String msg) {
		this.message = msg;
	}

}