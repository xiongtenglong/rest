package com.rest.web.pojo;

import com.rest.common.po.BasePojo;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name="tb_user_info")
public class UserInfo extends BasePojo {

	    @Id
		private Long userInfoId;
		private String name;
		private String cardNo;
		private Integer status;
		private String gender;
		private String email;
		private String cardPath;
		private Integer grade;
		private Date created;
		private Date updated;

	public Long getUserInfoId() {
		return userInfoId;
	}

	public void setUserInfoId(Long userInfoId) {
		this.userInfoId = userInfoId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCardPath() {
		return cardPath;
	}

	public void setCardPath(String cardPath) {
		this.cardPath = cardPath;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	@Override
	public Date getCreated() {
		return created;
	}

	@Override
	public void setCreated(Date created) {
		this.created = created;
	}

	@Override
	public Date getUpdated() {
		return updated;
	}

	@Override
	public void setUpdated(Date updated) {
		this.updated = updated;
	}


	@Override
	public String toString() {
		return "UserInfo{" +
				"userInfoId=" + userInfoId +
				", name='" + name + '\'' +
				", cardNo='" + cardNo + '\'' +
				", status=" + status +
				", gender='" + gender + '\'' +
				", email='" + email + '\'' +
				", cardPath='" + cardPath + '\'' +
				", grade=" + grade +
				", created=" + created +
				", updated=" + updated +
				'}';
	}
}
