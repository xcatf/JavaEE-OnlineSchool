package com.xor.model;

import java.util.Date;

public class RechargeRecord {
	private Integer id;

	private Integer studentId;

	private String studentName;

	private String collegeName;
	
	private Integer rechargeCoin;

	private Date recordTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	
	public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public Integer getRechargeCoin() {
		return rechargeCoin;
	}

	public void setRechargeCoin(Integer rechargeCoin) {
		this.rechargeCoin = rechargeCoin;
	}

	public Date getRecordTime() {
		return recordTime;
	}

	public void setRecordTime(Date recordTime) {
		this.recordTime = recordTime;
	}

}
