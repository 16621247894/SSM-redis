<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>id</td>
			<td>用户名</td>
			<td>密码</td>
			<td>盐</td>
			<td>锁定</td>
		</tr>
		<c:forEach items="${users }" var="u">
			<tr>
				<td>${u.id }</td>
				<td>${u.username }</td>
				<td>${u.password }</td>
				<td>${u.salt }</td>
				<td>${u.locked }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>