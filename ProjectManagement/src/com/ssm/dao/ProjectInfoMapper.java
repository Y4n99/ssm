package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.ProjectInfo;

public interface ProjectInfoMapper {
    
	/**
	 * ��ѯȫ�����ݲ���ҳ
	 */
	List<ProjectInfo> findAll(@Param("from") int from,@Param("pagesize") int pagesize);
	
	/**
	 * ��ѯ���ݿ�����������
	 */
	int count();
	
	/**
	 * �����걨״̬
	 */
	int updateStatus(ProjectInfo projectInfo);
	
	/**
	 * ����id��ѯ��Ŀ
	 */
	ProjectInfo getById(int id);
	
}
