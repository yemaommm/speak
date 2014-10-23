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
@Table(name = "t_app_partonequestion")
public class PartOneQuestion extends AbstractPo implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String title;// 标题
	private String content;// 内容(范例)

	private String mp3name;// 录音标题
	private String mp3upid;// 上传录音

	private Integer partOneId;// PartOne的ID
	private String seq;// 排序

	private String type;// 类型

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMp3name() {
		return mp3name;
	}

	public void setMp3name(String mp3name) {
		this.mp3name = mp3name;
	}

	public String getMp3upid() {
		return mp3upid;
	}

	public void setMp3upid(String mp3upid) {
		this.mp3upid = mp3upid;
	}

	public Integer getPartOneId() {
		return partOneId;
	}

	public void setPartOneId(Integer partOneId) {
		this.partOneId = partOneId;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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