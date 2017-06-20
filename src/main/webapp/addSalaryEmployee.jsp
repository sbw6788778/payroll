<form id="addsalaryemployeeform" class="form-horizontal" role="form" action="addEmployee/AddSalaryEmployee" method="post">
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