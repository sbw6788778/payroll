<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
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
				<li><a href="showAllEmployeeMessege">显示所有员工信息</a></li>
				<li><a href="deleteEmployee.jsp">删除员工</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						增加员工
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="addHourlyEmployee.jsp">增加小时工</a></li>
						<li><a href="addSalaryEmployee.jsp">增加编制人员</a></li>
						<li><a href="addCommissionEmployee.jsp">增加绩效工</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a>管理员：<%=session.getAttribute("admin") %></a></li>
            <li><a href="<%=request.getContextPath()%>/index.jsp">登出</a></li>	
          </ul>
        </div>
		</div>
	</nav>
	<table class="table table-hover">
  <caption>所有员工信息</caption>
  <thead>
    <tr>
      <th>员工号</th>
      <th>姓名</th>
      <th>地址</th>
      <th>员工类型</th>
      <th>支付方式</th>
    </tr>
  </thead>	
  <tbody>
	  <c:forEach var="employee" items="${employees}">
	  	<div class="modal fade" id="myModalHourly" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="myModalLabel">
									修改为小时工
								</h4>
							</div>
							<div class="modal-body">
								<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/changeClassification/toHourlyClassification" method="post">
	               					<div class="form-group">
			                            <label for="lastname" class="col-sm-3 control-label">id</label>
			                            <div class="col-sm-9">
			                            	<input type="text" class="form-control" name="id" value="" 
			                                       >
			              
			                            </div>
			                        </div>
			                        <div class="form-group">
			                            <label for="lastname" class="col-sm-3 control-label">一小时的薪水</label>
			                            <div class="col-sm-9">
			                            	
			                                <input type="text" class="form-control" name="hourlyRate" value="" 
			                                       placeholder="hourlyRate">
			                            </div>
			                        </div>
			                        <div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-default btn-sm">提交</button>
											</div>
									</div>
			                    </form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>
			<div class="modal fade" id="myModalSalary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="myModalLabel">
									领月薪员工
								</h4>
							</div>
							<div class="modal-body">
								<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/changeClassification/toSalariedClassification" method="post">
	               					<div class="form-group">
			                            <label for="lastname" class="col-sm-3 control-label">id</label>
			                            <div class="col-sm-9">
			                            	<input type="text" class="form-control" name="id" value="" 
			                                       >
			              
			                            </div>
			                        </div>
			                        <div class="form-group">
			                            <label for="lastname" class="col-sm-3 control-label">月薪</label>
			                            <div class="col-sm-9">
			                            	
			                                <input type="text" class="form-control" name="salary" value="" 
			                                       placeholder="salary">
			                            </div>
			                        </div>
			                        <div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-default btn-sm">提交</button>
											</div>
									</div>
			                    </form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div>
		     <div class="modal fade" id="myModalCommission" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title" id="myModalLabel">
									修改为绩效工
								</h4>
							</div>
							<div class="modal-body">
								<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/changeClassification/toCommissionedClassification" method="post">
	               					<div class="form-group">
			                            <label for="lastname" class="col-sm-3 control-label">id</label>
			                            <div class="col-sm-9">
			                            	<input type="text" class="form-control" name="id" value="" 
			                                       >
			              
			                            </div>
			                        </div>
			                        <div class="form-group">
			                            <label for="lastname" class="col-sm-3 control-label">基础工资</label>
			                            <div class="col-sm-9">
			                            	
			                                <input type="text" class="form-control" name="salary" value="" 
			                                       placeholder="salary">
			                            </div>
			                        </div>
			                        <div class="form-group">
			                            <label for="lastname" class="col-sm-3 control-label">提成</label>
			                            <div class="col-sm-9">
			                            	
			                                <input type="text" class="form-control" name="commissionRate" value="" 
			                                       placeholder="commissionRate">
			                            </div>
			                        </div>
			                        <div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-default btn-sm">提交</button>
											</div>
									</div>
			                    </form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭
								</button>
								
							</div>
						</div><!-- /.modal-content -->
					</div><!-- /.modal -->
				</div> 
	  	<tr>
	      <td>${employee.empId}</td>
	      <td>${employee.name}</td>
	      <td>${employee.address}</td>
	      <td>${employee.classification.messege}</td>
	      <td>${employee.method.messege}
	      	<c:if test="${employee.classification.messege=='小时工'}">
		      	<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModalSalary">
					修改为领月薪员工
				</button>
				
		      <button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModalCommission">
					修改为绩效工
				</button>
	      </c:if>
	      	<c:if test="${employee.classification.messege=='领月薪员工'}">
		      	<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModalHourly">
					修改为小时工
				</button>
				

		      <button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModalCommission">
					修改为绩效工
				</button>
				

	      </c:if>
	      <c:if test="${employee.classification.messege=='领提成加2周薪员工'}">
		      	<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModalHourly">
					修改为小时工
				</button>
				<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModalSalary">
					修改为领月薪员工
				</button>
			</c:if>
			
			</td>
	    </tr>
	  </c:forEach>	
  </tbody>
</table>
<ul class="pagination">
    <li><a href="#">&laquo;</a></li>
    <li class="active"><a href="#">1</a></li>
    <li class="disabled"><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
</ul>
</body>
<script language="javascript" type="text/javascript">    
    $(function(){    
        $("#getBtn").click(function(){    
            $.getJSON("showAllEmployeeMessege",  
                {action: "GetOnePersonJsonData"},    
                function(data){  
                    var allEmployees =data;  
                    jsonData += "name: " + data.name + "<br/>" +  
                                "age: " + data.age;  
                    $("#dataArea").html(jsonData);  
                });    
            });  
    });  
    </script>  
</html>