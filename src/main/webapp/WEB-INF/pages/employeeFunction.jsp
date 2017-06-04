<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <title>员工登录系统</title>
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron-narrow.css" rel="stylesheet">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  </head>

  <body>

    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="#">个人主页</a></li>
            <li role="presentation"><a href="#">About</a></li>
            <li role="presentation"><a href="#">Contact</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">员工登录系统</h3>
      </div>

      <div class="row marketing">
        <div class="col-lg-6">
          <h4>个人信息</h4>
          <p>用户名：${user.username}</p>
          <p>员工号：${user.employeeMessege.empId}</p>
          <p>姓名：${user.employeeMessege.name}      
          	<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal">
				修改
			</button>
			<!-- 模态框（Modal） -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
								修改姓名
							</h4>
						</div>
						<div class="modal-body">
							<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/change/name" method="post">
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">id</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="id" value="${user.employeeMessege.empId}" 
		                                       placeholder="${user.employeeMessege.empId}">
		              
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">姓名</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="text" class="form-control" name="name" value="" id="user_name"
		                                       placeholder="需要修改的姓名">
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
          </p>
          <p>地址：${user.employeeMessege.address}
          <button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal">
				修改
			</button>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
								修改地址
							</h4>
						</div>
						<div class="modal-body">
							<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/change/address" method="post">
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">id</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="id" value="${user.employeeMessege.empId}" 
		                                       placeholder="${user.employeeMessege.empId}">
		              
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">新地址</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="text" class="form-control" name="address" value="" 
		                                       placeholder="需要修改的地址">
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
          </p>
          <p>员工类型：${user.employeeMessege.classification.messege}
          	<c:if test="${user.employeeMessege.classification.messege=='小时工'}">
          		<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal4">
				增加工作时刻表
			</button>
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
								增加时刻表
							</h4>
						</div>
						<div class="modal-body">
							<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addTimeCard" method="post">
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">id</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="id" value="${user.employeeMessege.empId}" 
		                                       placeholder="${user.employeeMessege.empId}">
		              
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">日期</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="date" class="form-control" name="date" value="" 
		                                       placeholder="日期">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">工作时长</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="text" class="form-control" name="hours" value="" 
		                                       placeholder="工作时长">
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
          	</c:if>
          	<c:if test="${user.employeeMessege.classification.messege=='领提成加2周薪员工'}">
          		<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal5">
				增加销售记录
			</button>
			<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">
								增加销售记录
							</h4>
						</div>
						<div class="modal-body">
							<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addSalesReceipt" method="post">
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">id</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="id" value="${user.employeeMessege.empId}" 
		                                       placeholder="${user.employeeMessege.empId}">
		              
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">日期</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="date" class="form-control" name="date" value="" 
		                                       placeholder="日期">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">销售数量</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="text" class="form-control" name="amount" value="" 
		                                       placeholder="销售数量">
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
          	</c:if>
          </p>
          <p>支付类型：${user.employeeMessege.method.messege}
          <button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal1">
				修为邮寄支付
			</button>
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
								
							<h4 class="modal-title" id="myModalLabel">
								修改支付方式
							</h4>
						</div>
						<div class="modal-body">
							 
							<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/change/mailmethod" method="post">
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">id</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="id" value="${user.employeeMessege.empId}" 
		                                       placeholder="${user.employeeMessege.empId}">
		              
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">邮寄地址</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="text" class="form-control" name="address" value="" 
		                                       placeholder="邮寄地址">
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
          	<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal2">
				改为为银行卡支付
			</button>
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
								
							<h4 class="modal-title" id="myModalLabel">
								修改支付方式
							</h4>
						</div>
						<div class="modal-body">
							 
							<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/change/bankmethod" method="post">
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">id</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="id" value="${user.employeeMessege.empId}" 
		                                       placeholder="${user.employeeMessege.empId}">
		              
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">银行</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="text" class="form-control" name="bank" value="" 
		                                       placeholder="银行">
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">账号</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="text" class="form-control" name="account" value="" 
		                                       placeholder="银行账号">
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
          </p>
          <p>是否是工会成员：${user.employeeMessege.affiliation.messege}
          	<c:if test="${user.employeeMessege.affiliation.messege=='工会成员'}">
          		<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal8">
				添加工会服务费账单
			</button>
			<div class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
								
							<h4 class="modal-title" id="myModalLabel">
								工会服务费账单
							</h4>
						</div>
						<div class="modal-body">
							 
							<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addServiceCharge" method="post">
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">memberID</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="memberId" value="" 
		                                       >
		              
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">日期</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="date" class="form-control" name="date" value="" 
		                                       placeholder="日期">
		                            </div>
		                        </div>
		            			<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">服务费</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="amount" value="" 
		                                       >
		              
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
          		<a href="<%=request.getContextPath()%>/changeAffiliation/unaffiliation?id=${user.employeeMessege.empId}">退出公会</a>
          	</c:if>
          	<c:if test="${user.employeeMessege.affiliation.messege=='非工会成员'}">
          		<button class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal9">
				加入公会
			</button>
			<div class="modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
								
							<h4 class="modal-title" id="myModalLabel">
								加入公会
							</h4>
						</div>
						<div class="modal-body">
							 
							<form id="form1" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/changeAffiliation/affiliation" method="post">
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">员工号</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="id" value="" 
		                                       ">
		              
		                            </div>
		                        </div>
               					<div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">memId</label>
		                            <div class="col-sm-9">
		                            	<input type="text" class="form-control" name="memId" value="" 
		                                       ">
		              
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label for="lastname" class="col-sm-3 control-label">会费</label>
		                            <div class="col-sm-9">
		                            	
		                                <input type="text" class="form-control" name="dues" value="" 
		                                       placeholder="dues">
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
          	</c:if>
          </p>
        </div>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>