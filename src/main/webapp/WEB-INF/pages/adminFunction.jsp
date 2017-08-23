<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<title>员工管理系统</title>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js" charset="utf-8"></script>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js" charset="utf-8"></script>
</head>
<body>

	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" >员工管理系统</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="<%=request.getContextPath()%>/showAllEmployeeMessege" id="showAllEmployeeMessege">显示所有员工信息</a></li>
				<li><a href="<%=request.getContextPath()%>/showAllEmployeeMessege"  id="delectemployee">删除员工</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					增加员工
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="<%=request.getContextPath()%>/showAllEmployeeMessege"  id="addhourlyemployee">增加小时工</a></li>
			 			<li><a href="<%=request.getContextPath()%>/showAllEmployeeMessege"  id="addsalaryemployee">增加编制人员</a></li>
						<li><a href="<%=request.getContextPath()%>/showAllEmployeeMessege"  id="addcommissionemployee">增加绩效工</a></li>
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
<script>
$(document).ready(function(){
    $("#showAllEmployeeMessege").click(function(){
    	$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #allEmployee",function(response,status,xhr){
    		if(status=="success"){
    			var tbody=$('#nav table tbody');
    		    $.getJSON('<%=request.getContextPath()%>/showAllEmployeeMessege',function(json){	            
    			    for(var i=0;i<json.length;i++){
    			            addTable(json[i],tbody);
    			    }
    	    	});
    		}	
    	});
		return false;
	});
});
	function addTable(employee,tbody){
		var content="<tr><td>"+employee.empId+"</td><td>"+employee.name+"</td><td>"+employee.address+"</td><td>"+employee.classification.messege+"</td><td>"+employee.method.messege+"</td></tr>";
		//var content="<tr><td>haha</td></tr>"
		$(tbody).append(content);
	}
	$(document).ready(function(){
  		$("#delectemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #formdelect");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addhourlyemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addhourlyemployeeform");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addsalaryemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addsalaryemployeeform");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addcommissionemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.html #addcommissionemployeeform");
    		return false;
  		});
	});
</script>	 
</body>
</html>