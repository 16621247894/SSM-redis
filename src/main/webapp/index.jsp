<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			$.ajax({
				url:"getAjaxBtn",
				type:"post",
				success:function(data){
					alert(data);
				}
			})
		})
	})
</script>
</head>
<body>
	 this is my index.jsp
	 <button id="btn">发送</button>
</body>
</html>