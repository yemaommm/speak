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
@Table(name = "t_app_history")
public class History extends AbstractPo implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String sn;// 历史的sn
	private Integer userid;

	private String partOne;
	private String partOneQuestion;// 0代表所有

	private String partTwo;

	private String partThree;
	private String partThreeQuestion;// 0代表所有

	private String topic;// 练习的话题

	@Column(name = "CREATEUSERNAME", updatable = false)
	private String createusername;
	@Column(name = "CREATEDATETIME", updatable = false)
	private Date createdatetime;
	private String updateusername;
	private Date updatedatetime;

	@Transient
	protected String dayLine;// 时间

	private String type;// 类型(自主、重点、模考)
	private String part;// 重点练习哪个模块
	private String time;// 考试时间
	private String city;// 考试城市
	private String point;// 考试考点
	private String num;// 选择的题目

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

	public String getPartOne() {
		return partOne;
	}

	public void setPartOne(String partOne) {
		this.partOne = partOne;
	}

	public String getPartOneQuestion() {
		return partOneQuestion;
	}

	public void setPartOneQuestion(String partOneQuestion) {
		this.partOneQuestion = partOneQuestion;
	}

	public String getPartTwo() {
		return partTwo;
	}

	public void setPartTwo(String partTwo) {
		this.partTwo = partTwo;
	}

	public String getPartThree() {
		return partThree;
	}

	public void setPartThree(String partThree) {
		this.partThree = partThree;
	}

	public String getPartThreeQuestion() {
		return partThreeQuestion;
	}

	public void setPartThreeQuestion(String partThreeQuestion) {
		this.partThreeQuestion = partThreeQuestion;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

}