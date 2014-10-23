package me.icoral.core.db.entity;

import java.util.Date;

import me.icoral.web.security.Passport;

import org.springframework.security.core.context.SecurityContextHolder;

@SuppressWarnings("serial")
public abstract class AbstractPo implements java.io.Serializable {

	public abstract void setCreateusername(String createusername);

	public abstract void setCreatedatetime(Date createdatetime);

	public abstract void setUpdateusername(String updateusername);

	public abstract void setUpdatedatetime(Date updatedatetime);

	public void setDefaultValue() {
		Passport passport = getPassport();
		setCreateusername(passport.getUsername());
		setUpdateusername(passport.getUsername());
		Date now = new Date();
		setCreatedatetime(now);
		setUpdatedatetime(now);
	}

	public static Passport getPassport() {
		Passport passport = null;
		try {
			passport = (Passport) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		} catch (Exception ex) {
			passport = new Passport("annoymous");
		}
		return passport;
	}

}