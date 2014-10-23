package me.icoral.app.db.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import me.icoral.base.util.TextFormatter;

@SuppressWarnings("serial")
@Entity
@Table(name = "v_app_recordtopic")
public class RecordTopicView implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String content;// 评论内容
	private Integer recordId;// history的id

	private Integer userid;// 话题发起人ID
	
	private String nickname;// 话题发起人

	private Integer reuserid;// 被回复人的ID
	
	private String renickname;// 被回复人

	private Integer parent;// 评论的上级话题ID(根级话题上级话题ID为0)
	private Integer status;// 状态（1显示 0不显示）

	private Date createdatetime;

	@Transient
	protected String dayLine;// 评论天数

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getRecordId() {
		return recordId;
	}

	public void setRecordId(Integer recordId) {
		this.recordId = recordId;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Integer getReuserid() {
		return reuserid;
	}

	public void setReuserid(Integer reuserid) {
		this.reuserid = reuserid;
	}

	public String getRenickname() {
		return renickname;
	}

	public void setRenickname(String renickname) {
		this.renickname = renickname;
	}

	public Integer getParent() {
		return parent;
	}

	public void setParent(Integer parent) {
		this.parent = parent;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getCreatedatetime() {
		return createdatetime;
	}

	public void setCreatedatetime(Date createdatetime) {
		this.createdatetime = createdatetime;
	}

	public String getDayLine() {
		Date now = new Date();
		long diff = now.getTime() - createdatetime.getTime();

		long days = diff / (1000 * 60 * 60 * 24);
		if (days < 1) {
			long hours = diff / (1000 * 60 * 60);
			if (hours < 1) {
				long minutes = diff / (1000 * 60);
				if (minutes < 1) {
					long seconds = diff / (1000);
					if (seconds < 2) {
						return "刚刚";
					} else {
						return String.valueOf(seconds) + "秒前";
					}
				} else {
					return String.valueOf(minutes) + "分钟前";
				}
			} else {
				return String.valueOf(hours) + "小时前";
			}
		} else {
			if (days > 30) {
				return TextFormatter.formatDate(createdatetime);
			} else {
				return String.valueOf(days) + "天前";
			}
		}
	}

	public void setDayLine(String dayLine) {
		this.dayLine = dayLine;
	}

}