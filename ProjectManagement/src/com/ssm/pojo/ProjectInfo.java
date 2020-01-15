package com.ssm.pojo;

/**
 * 项目信息表对应实体类
 * 
 * @author lkk
 * 
 */
public class ProjectInfo {
	private int id; // int(11) NOT NULL项目编号
	private String projectname; // varchar(40) NOT NULL项目名称
	private String startDate; // date NOT NULL开始日期
	private String endDate; // date NOT NULL结束日期
	private int status; // int(1) NOT NULL申报状态

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
