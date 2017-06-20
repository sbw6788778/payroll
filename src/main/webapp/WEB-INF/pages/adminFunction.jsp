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
				<li><button type="button" class="list-group-item" id="delectemployee">删除员工</button></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						增加员工
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><button type="button" class="list-group-item" id="addhourlyemployee">增加小时工</button></li>
						<li><button type="button" class="list-group-item" id="addsalaryemployee">增加编制人员</button></li>
						<li><button type="button" class="list-group-item" id="addcommissionemployee">增加绩效工</button></li>
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
	<nav id="nav"></nav>
<script src=/js/jquery.js" charset="utf-8">
</script>
<script>
	$(document).ready(function(){
  		$("#delectemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #deletemployeeform");
  		});
	});
	$(document).ready(function(){
  		$("#addhourlyemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addhourlyemployeeform");
  		});
	});
	$(document).ready(function(){
  		$("#addsalaryemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addsalaryemployeeform");
  		});
	});
	$(document).ready(function(){
  		$("#addcommissionemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addcommissionemployeeform");
  		});
	});
</script>	 
</body>
</html>