package com.ssm.pojo;

/**
 * ��Ŀ��Ϣ���Ӧʵ����
 * 
 * @author lkk
 * 
 */
public class ProjectInfo {
	private int id; // int(11) NOT NULL��Ŀ���
	private String projectname; // varchar(40) NOT NULL��Ŀ����
	private String startDate; // date NOT NULL��ʼ����
	private String endDate; // date NOT NULL��������
	private int status; // int(1) NOT NULL�걨״̬

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
