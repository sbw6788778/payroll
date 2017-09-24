<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<form class="form" id="changeEmployeeClassificationForm" onsubmit="return searchEmployeeById()">
                      <div class="form-group"> 

                          <div class="col-xs-6"> 
                               <label for="id"><h4>id</h4></label> 
                               <input type="text" class="form-control" name="id" id="id" placeholder="id" title="enter eid you want to change"> 
                           </div> 
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> search</button>
                                <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
</form> 
<form class="form" id="addTimeCardForm" onsubmit="return addTimeCardForm()">
<!--                       <div class="form-group"> -->

<!--                           <div class="col-xs-6"> -->
<!--                               <label for="id"><h4>id</h4></label> -->
<!--                               <input type="text" class="form-control" name="id" id="id" placeholder="id" title="enter your eid"> -->
<!--                           </div> -->
<!--                       </div> -->
                      <div class="form-group">

                          <div class="col-xs-6">
                              <label for="hours"><h4>hours</h4></label>
                              <input type="text" class="form-control" name="hours" id="hours" placeholder="hours" title="enter your hours.">
                          </div>
                      </div>
                      <div class="form-group">

                          <div class="col-xs-6">
                            <label for="date"><h4>date</h4></label>
                              <input type="date" class="form-control" name="date" id="TimeCardDate"  title="date">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
                </form>
<form class="form" id="AddSalesReceiptForm" onsubmit="return AddSalesReceiptForm()">
<!--                       <div class="form-group"> -->

<!--                           <div class="col-xs-6"> -->
<!--                               <label for="id"><h4>id</h4></label> -->
<!--                               <input type="text" class="form-control" name="id" id="id" placeholder="id" title="enter your eid"> -->
<!--                           </div> -->
<!--                       </div> -->
                      <div class="form-group">
                          <div class="col-xs-6">
                              <label for="amount"><h4>amount</h4></label>
                              <input type="text" class="form-control" name="amount" id="amount" placeholder="amount" title="enter sale amount.">
                          </div>
                      </div>
                      <div class="form-group">

                          <div class="col-xs-6">
                            <label for="date"><h4>date</h4></label>
                              <input type="date" class="form-control" name="date" id="date"  title="date">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
                </form>

<form id="formdelect" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/DeleteEmployee" method="post">
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">员工号</label>
		<div class="col-sm-10">
		<input type="text" class="form-control" name="id" 
				   placeholder="输入员工号">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">删除</button>
		</div>
	</div>
</form>
<form  id=addhourlyemployeeform class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addEmployee/AddHourlyEmployee" method="post">
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">员工号</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="id" 
				   placeholder="请输入员工号">
		</div>
	</div>
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">名字</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="name" 
				   placeholder="请输入名字">
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">家庭住址</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="address" 
				   placeholder="请输入家庭住址">
		</div>
	</div>
	<div class="form-group">
		<label for="hourlyRate" class="col-sm-2 control-label">时薪</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="hourlyRate" 
				   placeholder="请输入时薪">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">增加</button>
		</div>
	</div>
</form>
<form id="addcommissionemployeeform" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addEmployee/AddCommissionEmployee" method="post">
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">员工号</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="id" 
				   placeholder="请输入员工号">
		</div>
	</div>
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">名字</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="name" 
				   placeholder="请输入名字">
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">家庭住址</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="address" 
				   placeholder="请输入住址">
		</div>
	</div>
	<div class="form-group">
		<label for="commissionRate" class="col-sm-2 control-label">提成</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="commissionRate" 
				   placeholder="请输入提成比例">
		</div>
	</div>
	<div class="form-group">
		<label for="salary" class="col-sm-2 control-label">基本工资</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="salary" 
				   placeholder="请输入基本工资">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">增加</button>
		</div>
	</div>
</form>
<form id="addsalaryemployeeform" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addEmployee/AddSalaryEmployee" method="post">
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">员工号</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="id" 
				   placeholder="请输入员工号">
		</div>
	</div>
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">名字</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="name" 
				   placeholder="请输入名字">
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">家庭住址</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="address" 
				   placeholder="请输入住址">
		</div>
	</div>
	<div class="form-group">
		<label for="salary" class="col-sm-2 control-label">月薪</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="salary" 
				   placeholder="请输入月薪">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">增加</button>
		</div>
	</div>
</form>

<table id="allEmployee" class="table table-hover">
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
  <tbody id="haha">	
  </tbody>
</table>
<div id="change">
	<table id="allEmployee1" class="table table-hover">
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
	  <tbody id="haha1">	
	  </tbody>
	</table>
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
								<form id="form1" class="form-horizontal" role="form" onsubmit="return changeClassification()">
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
								<form id="form2" class="form-horizontal" role="form" onsubmit="return changeClassification2()">
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
								<form id="form3" class="form-horizontal" role="form" onsubmit="return changeClassification3()">
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
				</div>
