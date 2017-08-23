<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <title>员工登录系统</title>
    <!-- Bootstrap core CSS -->
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">	
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  </head>
<body>
<hr>
<div class="container">
	<div class="row">
  		<div class="col-sm-10"><h1>employee system</h1></div>
    	<div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              
          <ul class="list-group">
            <li class="list-group-item text-muted">Employee Profile</li>
            <li class="list-group-item text-right" id="employeeId"><span class="pull-left"><strong>Eid</strong></span></li>
            <li class="list-group-item text-right" id="employeeUsername"><span class="pull-left"><strong>username</strong></span></li>
            <li class="list-group-item text-right" id="employeeRealname"><span class="pull-left"><strong>Real name</strong></span></li>
            <li class="list-group-item text-right" id="employeeAddress"><span class="pull-left"><strong>Address</strong></span></li>
            <li class="list-group-item text-right" id="employeeClassification"><span class="pull-left"><strong>Employee Classification</strong></span></li>
          </ul> 
               
          <div class="panel panel-default">
            <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
            <div class="panel-body"><a href="http://bootply.com">bootply.com</a></div>
          </div>
          
          
          <ul class="list-group">
            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
          </ul> 
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
          
          <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
            <li><a href="#messages" data-toggle="tab">Messages</a></li>
            <li><a href="#settings" data-toggle="tab">Settings</a></li>
          </ul>
              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
              <div class="table-responsive">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Label 1</th>
                      <th>Label 2</th>
                      <th>Label 3</th>
                      <th>Label </th>
                      <th>Label </th>
                      <th>Label </th>
                    </tr>
                  </thead>
                  <tbody id="items">
                    <tr>
                      <td>1</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                    </tr>
                    
                  </tbody>
                </table>
                <hr>
                <div class="row">
                  <div class="col-md-4 col-md-offset-4 text-center">
                  	<ul class="pagination" id="myPager"></ul>
                  </div>
                </div>
              </div><!--/table-resp-->
              
              <hr>
            
              
              
              
             </div><!--/tab-pane-->
             <div class="tab-pane" id="messages">
               
               <h2></h2>
               
               <ul class="list-group">
                  <li class="list-group-item text-muted">Inbox</li>
                  <li class="list-group-item text-right"><a href="#" class="pull-left">Here is your a link to the latest summary report from the..</a> 2.13.2014</li>
                  <li class="list-group-item text-right"><a href="#" class="pull-left">Hi Joe, There has been a request on your account since that was..</a> 2.11.2014</li>
                  <li class="list-group-item text-right"><a href="#" class="pull-left">Nullam sapien massaortor. A lobortis vitae, condimentum justo...</a> 2.11.2014</li>
                  
                  
                </ul> 
               
             </div><!--/tab-pane-->
             <div class="tab-pane" id="settings">
            		
               	
                  <hr>
                  <form class="form" id="resetPersonalMessageForm" onsubmit="return resetPersonalMessage()">
                      <div class="form-group">

                          <div class="col-xs-6">
                              <label for="id"><h4>id</h4></label>
                              <input type="text" class="form-control" name="id" id="id" placeholder="id" title="enter your eid">
                          </div>
                      </div>
		      		  <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>real name</h4></label>
                              <input type="text" class="form-control" name="name" id="first_name" placeholder="first name" title="enter your real name if you want to change.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>address</h4></label>
                              <input type="text" class="form-control" name="address" id="address" placeholder="address" title="address">
                          </div>
                      </div>
         
                      <div class="form-group">  
	                      <div class="col-xs-6">
	                              <label for="email"><h4>Email</h4></label>
	                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
	                          
	                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              	</form>
              </div>
          </div>
         </div><!--/tab-pane-->
</div><!--/tab-content-->
</div>
	<script>
		 $(document).ready(function (){
			 $.ajax({
		          type: "GET",
		          url: "<%=request.getContextPath()%>/personalMessege",
		          async: false,
		          success: function(msg) {
		               loadPersonalMessage(msg); 
		          }
		      });
		 });
	
		function resetPersonalMessage() {
		      $.ajax({
		          type: "POST",
		          url: "<%=request.getContextPath()%>/change/userProfile",
		          async: false,
		          data : $("#resetPersonalMessageForm").serialize(),
		          success: function(msg) {
		                  if(msg=="success"){
		                          alert("修改成功");
		                  }
		                  else{
		                         alert();
		                         
		                  }
		                          
		          }
		      });
		      return false;
		  }
		function loadPersonalMessage(employee){
			$('#employeeId').append('<p>'+employee.employeeMessege.empId+'</p>');
			$('#employeeUsername').append('<p>'+employee.username+'</p>');
			$('#employeeRealname').append('<p>'+employee.employeeMessege.name+'</p>');
			$('#employeeAddress').append('<p>'+employee.employeeMessege.address+'</p>');
			$('#employeeClassification').append('<p>'+employee.employeeMessege.classification.messege+'</p>');
			var classification=employee.employeeMessege.classification.messege;
			var method=employee.employeeMessege.method.messege;
			var form=$('#resetPersonalMessageForm'); 
			if(method=="支票邮寄"){
				var mailAddress="<div class=\"form-group\"><div class=\"col-xs-6\"><label for=\"mailAddress\"><h4>Password</h4></label><input type=\"mailAddress\" class=\"form-control\" name=\"mailAddress\" id=\"mailAddress\" placeholder=\"mailAddress\" title=\"enter your mailAddress\"></div></div>";
				$(form).append(mailAddress);
			}
			if(method=="存入银行"){
				var mailAddress="<div class=\"form-group\"><div class=\"col-xs-6\"><label for=\"bank\"><h4>Password</h4></label><input type=\"bank\" class=\"form-control\" name=\"bank\" id=\"bank\" placeholder=\"bank\" title=\"enter your bank\"></div></div><div class=\"form-group\"><div class=\"col-xs-6\"><label for=\"account\"><h4>Password</h4></label><input type=\"account\" class=\"form-control\" name=\"account\" id=\"account\" placeholder=\"account\" title=\"enter your account\"></div></div>";
		                $(form).append(mailAddress);
			}
			if(classification=="小时工"){
				$("#messages").load("<%=request.getContextPath()%>/commonHtml.html #addTimeCardForm");
			}
			else if(classification=="绩效工"){
				$("#messages").load("<%=request.getContextPath()%>/commonHtml.html #addSalesReceiptForm");
			}
		}
		function AddSalesReceiptForm(){}
		function AddTimeCardForm(){}	
	</script>
</body>
</html>
