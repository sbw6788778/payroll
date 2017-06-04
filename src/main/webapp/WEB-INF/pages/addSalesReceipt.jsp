<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>添加销售记录</title>
</head>
<body>
	<form action="servlet/AddSalesReceipt" method="post">
		日期:<br>
		<input type="date" name="date" value="">
		<br>
 		销售数量:<br>
		<input type="text" name="amount" value="">
		<br>
		<input type="submit" value="Submit">
	</form> 
</body>
</html>