<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>审核页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form action="upd.do" method="post" name="projectInfo">
		<table>
			<tr>
				<td>
					<h1>申报项目信息</h1></td>
			</tr>
			<tr>
				<td>项目编号:</td>
				<td><input name="id" type="text" value="${item.id}"
					disabled="disabled">
				</td>
			</tr>
			<tr>
				<td>项目名称:</td>
				<td><input name="projectname" type="text"
					value="${item.projectname}" disabled="disabled">
				</td>
			</tr>
			<tr>
				<td>项目开始时间:</td>
				<td><input name="startDate" type="text"
					value="${item.startDate}" disabled="disabled">
				</td>
			</tr>
			<tr>
				<td>项目结束时间:</td>
				<td><input name="endDate" type="text" value="${item.endDate}"
					disabled="disabled">
				</td>
			</tr>
			<tr>
				<td>审核状态:</td>
				<td><select name="status">
						<option value="0">已申报</option>
						<option value="1">审核中</option>
						<option value="2">已审核</option>
				</select></td>
			</tr>

		</table>
		<p>
			<input type="submit" value="审核" />
			<button>
				<a href="home">返回</a>
			</button>
		</p>
	</form>

</body>
</html>
