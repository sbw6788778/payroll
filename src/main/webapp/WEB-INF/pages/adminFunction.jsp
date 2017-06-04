<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<title>员工管理系统</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" >员工管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="<%=request.getContextPath()%>/showAllEmployeeMessege">显示所有员工信息</a></li>
				<li><a href="<%=request.getContextPath()%>/deleteEmployee.jsp">删除员工</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						增加员工
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<%=request.getContextPath()%>/addHourlyEmployee.jsp">增加小时工</a></li>
						<li><a href="<%=request.getContextPath()%>/addSalaryEmployee.jsp">增加编制人员</a></li>
						<li><a href="<%=request.getContextPath()%>/addCommissionEmployee.jsp">增加绩效工</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a>管理员：<%=session.getAttribute("user") %></a></li>
            <li><a href="<%=request.getContextPath()%>/index.jsp">登出</a></li>	
          </ul>
        </div>
		</div>
	</nav> 
</body>
</html>