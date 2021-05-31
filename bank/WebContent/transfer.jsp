<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>송금하기</title>
</head>
<body>

	<form action="search.do" method="post">
		Receiver ID: <input type="text" name="id"/><br>
		<input type="submit" value="SEARCH"/>
	</form>
	
	<%
		String result = (String)request.getAttribute("msg");
		if(result != null && result.equals("true")) {
			%>
			<form action="transfer.do" method="post">
			RECEIVER ID: <input type="text" readonly name="rId" value="${rId }"/><br>
			MONEY: <input type="text" name="money"/><br>
			<input type="submit" value="SEND MONEY"/>
			</form>
			<%
		} else if(result != null && result.equals("false")) {
			out.print("No Receiver ID");
		}
	%>
	
</body>
</html>