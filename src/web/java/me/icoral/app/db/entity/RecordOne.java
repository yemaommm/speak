package me.icoral.app.db.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import me.icoral.core.db.entity.AbstractPo;

@SuppressWarnings("serial")
@Entity
@Table(name = "t_app_recordone")
public class RecordOne extends AbstractPo implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String sn;// 分享的sn
	private Integer userid;

	private Integer recordId;// history的Id
	private String partString;// topic
	private String answer;// 范例
	private Integer seconds;// 录音秒数
	private String upid;// 上传的upid
	private Integer status;//

	@Column(name = "CREATEUSERNAME", updatable = false)
	private String createusername;
	@Column(name = "CREATEDATETIME", updatable = false)
	private Date createdatetime;
	private String updateusername;
	private Date updatedatetime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getRecordId() {
		return recordId;
	}

	public void setRecordId(Integer recordId) {
		this.recordId = recordId;
	}

	public String getPartString() {
		return partString;
	}

	public void setPartString(String partString) {
		this.partString = partString;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Integer getSeconds() {
		return seconds;
	}

	public void setSeconds(Integer seconds) {
		this.seconds = seconds;
	}

	public String getUpid() {
		return upid;
	}

	public void setUpid(String upid) {
		this.upid = upid;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCreateusername() {
		return createusername;
	}

	public void setCreateusername(String createusername) {
		this.createusername = createusername;
	}

	public Date getCreatedatetime() {
		return createdatetime;
	}

	public void setCreatedatetime(Date createdatetime) {
		this.createdatetime = createdatetime;
	}

	public String getUpdateusername() {
		return updateusername;
	}

	public void setUpdateusername(String updateusername) {
		this.updateusername = updateusername;
	}

	public Date getUpdatedatetime() {
		return updatedatetime;
	}

	public void setUpdatedatetime(Date updatedatetime) {
		this.updatedatetime = updatedatetime;
	}

}