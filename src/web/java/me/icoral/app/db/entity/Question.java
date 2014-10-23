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
@Table(name = "t_app_question")
public class Question extends AbstractPo implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String title;// 标题
	private String content;// 内容

	private String mp4name;// 录音标题
	private String mp4upid;// 上传录音
	private String imgupid;// 话题封面

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

	public String getMp4name() {
		return mp4name;
	}

	public void setMp4name(String mp4name) {
		this.mp4name = mp4name;
	}

	public String getMp4upid() {
		return mp4upid;
	}

	public void setMp4upid(String mp4upid) {
		this.mp4upid = mp4upid;
	}

	public String getImgupid() {
		return imgupid;
	}

	public void setImgupid(String imgupid) {
		this.imgupid = imgupid;
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