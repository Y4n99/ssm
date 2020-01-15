<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>首页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
   .odd{
     background: gray;
   }
   
   .even{
     background: yellow;
   }
</style>
</head>

<body>
    <h1>申报项目列表</h1>
	<table>
		<tr>
			<th>项目编号</th>
			<th>项目名称</th>
			<th>申报开始日期</th>
			<th>申报结束日期</th>
			<th>申报状态</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${infos}" var="item">
			<tr>
				<td>${item.id}</td>
				<td>${item.projectname}</td>
				<td>${item.startDate}</td>
				<td>${item.endDate}</td>
				<td>
				   <c:if test="${item.status==0}">已申报</c:if>
				   <c:if test="${item.status==1}">审核中</c:if>
				   <c:if test="${item.status==2}">已审核</c:if>
				</td>
				<td><c:if test="${item.status!=2}"><a href="upd?id=${item.id}">审核</a></c:if></td>
			</tr>
		</c:forEach>
	</table>
	<p class="page">
	   <span>
	      <c:if test="${page.pageno!=1}"><a href="home?pageno=1">首页</a></c:if>
	      <c:if test="${page.pageno>1}"><a href="home?pageno=${page.pageno-1}">上一页</a></c:if>
	      <c:if test="${page.pageno<page.pagecount}"><a href="home?pageno=${page.pageno+1}">下一页</a></c:if>
	      <c:if test="${page.pageno!=page.pagecount}"><a href="home?pageno=${page.pagecount}">尾页</a></c:if>
	   </span>
	   <span>
	      第${page.pageno}页/共${page.pagecount}页
	   </span>
	</p>
</body>
</html>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
   $(function(){
        $("tr:odd").addClass("odd");
        $("tr:even").addClass("even");
   })
</script>
