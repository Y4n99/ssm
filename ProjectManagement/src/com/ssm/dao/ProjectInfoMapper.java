package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.ProjectInfo;

public interface ProjectInfoMapper {
    
	/**
	 * 查询全部数据并分页
	 */
	List<ProjectInfo> findAll(@Param("from") int from,@Param("pagesize") int pagesize);
	
	/**
	 * 查询数据库总数据条数
	 */
	int count();
	
	/**
	 * 更新申报状态
	 */
	int updateStatus(ProjectInfo projectInfo);
	
	/**
	 * 根据id查询项目
	 */
	ProjectInfo getById(int id);
	
}
