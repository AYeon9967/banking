<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출금 결과</title>
</head>
<body>

	<%
		String result = (String)request.getAttribute("result");
		if (result == null) {
			%> 
				USER: ${id }<br>
				WITHDRAW: ${money }<br>
				TOTAL: ${tMoney }<br>
			<%
		} else {
			out.print(result);
		}
	%>
	<p>
	<%@ include file="homeMenu.jsp" %>

</body>
</html>