<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	TOTAL MONEY: ${money }
	<p></p>
	
	<form action="withdraw.do" method="post">
		MONEY: <input type="text" name="money"/><br>
		<input type="submit" value="WITHDRAW"/>
	</form>


</body>
</html>