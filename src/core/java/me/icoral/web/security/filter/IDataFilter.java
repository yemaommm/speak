package me.icoral.web.security.filter;

import me.icoral.web.security.Passport;

public interface IDataFilter {

	public boolean check(String url, Passport passport);

}