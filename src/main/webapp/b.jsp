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
		$.ajax({
			url:"getAjax",
			type:"post",
			data:{"age":10,"name":"zwq"},
			success:function(data){
				$.each(data,function(k,v){
					//alert(k+" "+v.username);
				})
			}
		})
		
	})
</script>
</head>
<body>

</body>
</html>