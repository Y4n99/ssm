package com.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.ProjectInfoMapper;
import com.ssm.pojo.ProjectInfo;

@Service
public class ProjectInfoServiceImpl implements ProjectInfoService{

	@Autowired
	private ProjectInfoMapper pim;
	
	@Override
	public List<ProjectInfo> findAll(int from, int pagesize) {
		// TODO Auto-generated method stub
		return pim.findAll(from, pagesize);
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return pim.count();
	}

	@Override
	public int updateStatus(ProjectInfo projectInfo) {
		// TODO Auto-generated method stub
		return pim.updateStatus(projectInfo);
	}

	@Override
	public ProjectInfo getById(int id) {
		// TODO Auto-generated method stub
		return pim.getById(id);
	}

}
