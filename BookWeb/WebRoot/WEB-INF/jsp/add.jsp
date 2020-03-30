<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
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

<title>增加新书</title>

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
	<p>
		<a href="home">返回</a>
	</p>
	<form action="add.do" method="post">
		<table>
			<tr>
				<td>增加新书</td>
			</tr>
			<tr>
				<td>书名:</td>
				<td><input name="bookName" id="bookName"></td>
			</tr>
			<tr>
				<td>作者:</td>
				<td><input name="bookAuthor"></td>
			</tr>
			<tr>
				<td>出版社:</td>
				<td><input name="bookPublish"></td>
			</tr>
			<tr>
				<td>页数:</td>
				<td><input name="bookPage" id="bookPage"></td>
			</tr>
			<tr>
				<td>价格:</td>
				<td><input name="bookPrice" id="bookPrice"></td>
			</tr>
			<tr>
				<td>
				    <input type="submit" id="btn" value="提交"> 
				</td>
				<td>
				    <input type="reset" id="setbnt" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
<script src="${pageContext.request.contextPath}/statics/js/jquery-1.8.3.js"></script>
<script>
       $(function(){
          $("#btn").click(function(){
             var bookName=$("#bookName").val();
             var bookPage=$("#bookPage").val();
             var bookPrice=$("#bookPrice").val();
             
             if(bookName==null || bookName==""){
                alert("书名不能为空");
                return false;
             }else if(bookPage%1!=0){
                alert("页数必须为整数");
                return false;
             }else if(isNaN(bookPrice) || bookPrice==0){
                alert("价格必须是数字类型");
                return false;
             }
             
             return true;
          })
       })
</script>
