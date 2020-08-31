<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			$.ajax({
				url:"",
				type:"post",
				success:function(data){
					//alert(data);
				}
			})
		});
	});
	
</script>
</head>
<body>	
	<form action="ex1">
		<input type="submit" value="导出1" />
	</form>
	<form action="ex2">
		<input type="submit" value="导出2" />
	</form>
	
	<table border="1">
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>年龄</td>
			<td>生日</td>
			<td>性别</td>
			<td>手机号</td>
			<td>地址</td>
			<td>邮箱</td>
			<td>班级</td>
		</tr>
		<c:forEach items="${stus }" var="s">
			<tr>
				<td>${s.stuId }</td>
				<td>${s.stuName }</td>
				<td>${s.age }</td>
				<td>${s.birthday }</td>
				<td>${s.sex }</td>
				<td>${s.phone }</td>
				<td>${s.address }</td>
				<td>${s.email }</td>
				<td>${s.cVO.cName }</td>
			</tr>
		</c:forEach>
	</table>
	<h1>192.168.40.128    00000000008页面</h1>
	<h1>获取真实ip :  <%=request.getHeader("X-real-ip") %>  <br/>
代理ip  nginx server ip : <%=request.getRemoteAddr()%></h1>
</body>
</html>