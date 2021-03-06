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
				<li><a href="<%=request.getContextPath()%>/showAllEmployeeMessege"  id="changeEmployeeClassification">修改员工类型</a></li>
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
    	$("#nav").load("<%=request.getContextPath()%>/commonHtml.jsp #allEmployee",function(response,status,xhr){
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
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.jsp #formdelect");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addhourlyemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.jsp #addhourlyemployeeform");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addsalaryemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.jsp #addsalaryemployeeform");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#addcommissionemployee").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.jsp #addcommissionemployeeform");
    		return false;
  		});
	});
	$(document).ready(function(){
  		$("#changeEmployeeClassification").click(function(){
    		$("#nav").load("<%=request.getContextPath()%>/commonHtml.jsp #changeEmployeeClassificationForm");
    		return false;
  		});
	});
	function searchEmployeeById(){
		$.ajax({
	          type: "GET",
	          url: "<%=request.getContextPath()%>/employees/",
	          async: false,
	          data : $("#changeEmployeeClassificationForm").serialize(),
	          success: function(msg) {
	                  if(msg==''){
	                          alert("没有这个员工，请重新输入");
	                  }
	                  else{
	                         var employee=msg;
	                         var button1="<button class=\"btn btn-default btn-sm\" data-toggle=\"modal\" data-target=\"#myModalHourly\">修改为小时工</button>"
		                         var button2="<button class=\"btn btn-default btn-sm\" data-toggle=\"modal\" data-target=\"#myModalCommission\">修改为绩效工</button>"
		                         var button3="<button class=\"btn btn-default btn-sm\" data-toggle=\"modal\" data-target=\"#myModalSalary\">修改为领月薪员工</button>"
	                         $("#nav").load("<%=request.getContextPath()%>/commonHtml.jsp #change",function(){
	                     			var tbody=$('#nav #change table tbody');
	                     			addTable(employee,tbody);
	                     			if(employee.classification.messege=="小时工"){
	   	                        	 $("#nav").append(button2);
	   	                        	 $("#nav").append(button3);
	   	            
	   	                         }else if(employee.classification.messege=="编制员工"){
	   	                        	 $("#nav").append(button1);
	   	                        	 $("#nav").append(button2);
	   	                         }else{
	   	                        	 $("#nav").append(button1);
	   	                        	 $("#nav").append(button3);
	   	                         }
	                     	});
	                  }
	                          
	          }
	      });
	      return false;
	}
	function changeClassification(){
		$.ajax({
	          type: "POST",
	          url: "<%=request.getContextPath()%>/changeClassification/toHourlyClassification",
	          async: false,
	          data : $("#form1").serialize(),
	          success: function(msg) {
	                  if(msg=='success'){
	                         alert("修改成功");
	                  }
	                  else{
	                	  alert("修改失败")
	                  }
	                          
	          }
	      });
	      return false; 
	}
	function changeClassification2(){
		$.ajax({
	          type: "POST",
	          url: "<%=request.getContextPath()%>/changeClassification/toSalariedClassification",
	          async: false,
	          data : $("#form2").serialize(),
	          success: function(msg) {
	                  if(msg=='success'){
	                         alert("修改成功");
	                  }
	                  else{
	                	  alert("修改失败")
	                  }
	                          
	          }
	      });
	      return false; 
	}
	function changeClassification3(){
		$.ajax({
	          type: "POST",
	          url: "<%=request.getContextPath()%>/changeClassification/toCommissionedClassification",
	          async: false,
	          data : $("#form3").serialize(),
	          success: function(msg) {
	                  if(msg=='success'){
	                         alert("修改成功");
	                  }
	                  else{
	                	  alert("修改失败")
	                  }
	                          
	          }
	      });
	      return false; 
	}
</script>	 
</body>
</html>