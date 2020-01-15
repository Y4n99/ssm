package com.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.ssm.pojo.ProjectInfo;
import com.ssm.service.ProjectInfoService;
import com.ssm.util.Page;

@Controller
public class ProjectInfoController {
	@Resource
	private ProjectInfoService pis;

	// 首页
	@RequestMapping(value = "/home")
	public String home(Model model, Page page) {
		int count = pis.count();
		page.setPagesize(3);
		page.setPagecount(count);
		int from = (page.getPageno() - 1) * page.getPagesize();
		List<ProjectInfo> infos = pis.findAll(from, page.getPagesize());
		model.addAttribute("infos", infos);
		model.addAttribute("page", page);
		return "home";
	}

	
	// 审核页面
	@RequestMapping(value = "/upd")
	public String upd(Model model, Integer id,HttpSession session) {
		ProjectInfo projectInfo = pis.getById(id);
		session.setAttribute("id", id);
		model.addAttribute("item", projectInfo);
		return "upd";
	}

	// 审核页面提交处理
	@RequestMapping(value = "/upd.do",method = RequestMethod.POST)
	public String upddo(Model model, ProjectInfo projectInfo,HttpSession session) {
		int id=(Integer) session.getAttribute("id");
		projectInfo.setId(id);
		int count = pis.updateStatus(projectInfo);
		session.removeAttribute("id");
		return "redirect:/home";
	}

}
