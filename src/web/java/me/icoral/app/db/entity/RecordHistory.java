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
import me.icoral.core.db.entity.AbstractPo;

@SuppressWarnings("serial")
@Entity
@Table(name = "t_app_recordhistory")
public class RecordHistory extends AbstractPo implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String sn;// 历史的sn
	private Integer userid;

	private String type;// part类型
	private Integer partId;// partId
	private String topic;// 练习的话题
	private Double point;// 平均分数
	private Integer status;// 状态 1分享 0不分享

	@Column(name = "CREATEUSERNAME", updatable = false)
	private String createusername;
	@Column(name = "CREATEDATETIME", updatable = false)
	private Date createdatetime;
	private String updateusername;
	private Date updatedatetime;

	@Transient
	protected String dayLine;// 时间

	@Transient
	private String recordOnes;

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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getPartId() {
		return partId;
	}

	public void setPartId(Integer partId) {
		this.partId = partId;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public Double getPoint() {
		return point;
	}

	public void setPoint(Double point) {
		this.point = point;
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

	public String getRecordOnes() {
		return recordOnes;
	}

	public void setRecordOnes(String recordOnes) {
		this.recordOnes = recordOnes;
	}

}