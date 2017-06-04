<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>增加工会服务费</title>
</head>
<body>
	<form action="servlet/AddServiceCharge" method="post">
		日期:<br>
		<input type="date" name="date" value="">
		<br>
		工会号码:<br>
		<input type="text" name="unionId" value="">
		<br>
 		服务费:<br>
		<input type="text" name="amount" value="">
		<br>
		<input type="submit" value="Submit">
	</form> 
</body>
</html>