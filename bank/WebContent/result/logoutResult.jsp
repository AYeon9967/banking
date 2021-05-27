<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 완료</title>
</head>
<body>

	${id } : LOGOUT COMPLETE!
	 <%
	 	session.invalidate();
	 %>
	 
	 <p>
	<%@ include file="home.jsp" %>

</body>
</html>