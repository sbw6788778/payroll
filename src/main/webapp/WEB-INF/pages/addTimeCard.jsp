<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>增加时间表</title>
</head>
<body>
	<form action="servlet/AddTimeCard" method="post">
		日期:<br>
		<input type="date" name="date" value="">
		<br>
 		工作时长:<br>
		<input type="text" name="hours" value="">
		<br>
		<input type="submit" value="Submit">
	</form> 
</body>
</html>