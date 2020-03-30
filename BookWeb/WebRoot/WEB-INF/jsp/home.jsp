<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
    request.setCharacterEncoding("utf-8");
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

</head>

<body>
	<form action="home" method="get">
		<select name="sel">
			<option value="1">书名</option>
			<option value="2">作者</option>
			<option value="3">出版社</option>
		</select> 
		<input type="text" name="text">
		<input type="submit" value="提交">
	</form>
	<p>
		<a href="add">增加新书</a>
	</p>
	<table>
		<tr style="background-color: blue;">
			<th>书名</th>
			<th>作者</th>
			<th>出版社</th>
			<th>页数</th>
			<th>价格</th>
		</tr>
		<c:forEach items="${list}" var="item">
			<tr>
				<td>${item.bookName}</td>
				<td>${item.bookAuthor}</td>
				<td>${item.bookPublish}</td>
				<td>${item.bookPage}</td>
				<td>${item.bookPrice}</td>
			</tr>
		</c:forEach>
	</table>
	<div>
		<p>
			<c:if test="${page.pageno!=1}"><a href="home?pageno=1&&sel=${sel}&&text=${text}">首页</a></c:if>
			<c:if test="${page.pageno>1}"><a href="home?pageno=${page.pageno-1}&&sel=${sel}&&text=${text}">上一页</a></c:if>
			<c:if test="${page.pageno<page.pagecount}"><a href="home?pageno=${page.pageno+1}&&sel=${sel}&&text=${text}">下一页</a></c:if>
			<c:if test="${page.pageno!=page.pagecount}"><a href="home?pageno=${page.pagecount}&&sel=${sel}&&text=${text}">末页</a></c:if>
			<span>第${page.pageno}页/共${page.pagecount}页</span>
		</p>
	</div>
</body>
</html>
