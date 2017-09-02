<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
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
		<label for="firstname" class="col-sm-2 control-label">Ա����</label>
		<div class="col-sm-10">
		<input type="text" class="form-control" name="id" 
				   placeholder="����Ա����">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">ɾ��</button>
		</div>
	</div>
</form>
<form  id=addhourlyemployeeform class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addEmployee/AddHourlyEmployee" method="post">
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">Ա����</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="id" 
				   placeholder="������Ա����">
		</div>
	</div>
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">����</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="name" 
				   placeholder="����������">
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">��ͥסַ</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="address" 
				   placeholder="������סַ">
		</div>
	</div>
	<div class="form-group">
		<label for="hourlyRate" class="col-sm-2 control-label">ʱн</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="hourlyRate" 
				   placeholder="������ʱн">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">����</button>
		</div>
	</div>
</form>
<form id="addcommissionemployeeform" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addEmployee/AddCommissionEmployee" method="post">
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">Ա����</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="id" 
				   placeholder="������Ա����">
		</div>
	</div>
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">����</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="name" 
				   placeholder="����������">
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">��ͥסַ</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="address" 
				   placeholder="������סַ">
		</div>
	</div>
	<div class="form-group">
		<label for="commissionRate" class="col-sm-2 control-label">���</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="commissionRate" 
				   placeholder="��������ɱ���">
		</div>
	</div>
	<div class="form-group">
		<label for="salary" class="col-sm-2 control-label">��������</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="salary" 
				   placeholder="�������������">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">����</button>
		</div>
	</div>
</form>
<form id="addsalaryemployeeform" class="form-horizontal" role="form" action="<%=request.getContextPath()%>/addEmployee/AddSalaryEmployee" method="post">
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">Ա����</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="id" 
				   placeholder="������Ա����">
		</div>
	</div>
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">����</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="name" 
				   placeholder="����������">
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label">��ͥסַ</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="address" 
				   placeholder="������סַ">
		</div>
	</div>
	<div class="form-group">
		<label for="salary" class="col-sm-2 control-label">��н</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="salary" 
				   placeholder="��������н">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">����</button>
		</div>
	</div>
</form>

<table id="allEmployee" class="table table-hover">
  <caption>����Ա����Ϣ</caption>
  <thead>
    <tr>
      <th>Ա����</th>
      <th>����</th>
      <th>��ַ</th>
      <th>Ա������</th>
      <th>֧����ʽ</th>
    </tr>
  </thead>
  <tbody id="haha">	
  </tbody>
</table>	
