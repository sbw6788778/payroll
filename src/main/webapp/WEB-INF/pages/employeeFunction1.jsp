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
            <li class="list-group-item text-right"><span class="pull-left"><strong>Eid</strong></span>${user.employeeMessege.empId}</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>username</strong></span> ${user.username}</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Real name</strong></span> ${user.employeeMessege.name}</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Address</strong></span> ${user.employeeMessege.address}</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Employee Classification</strong></span> ${user.employeeMessege.classification.messege}</li>
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
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>real name</h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your real name if you want to change.">
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
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="password2" title="enter your password2.">
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
              </div>
          </div>
         </div><!--/tab-pane-->
</div><!--/tab-content-->
</div>

</body>
</html>