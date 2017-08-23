<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>员工注册</title>

    <!-- Bootstrap core CSS -->
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js" charset="utf-8"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js" charset="utf-8"></script>
    
  </head>

  <body>

    <div class="container">

      <form id="form1" class="form-signin" onsubmit="return PostData()">
        <h2 class="form-signin-heading">新用户注册</h2>
        <label for="inputUsername" class="sr-only">id</label>
        <input type="text" name="id" class="form-control" placeholder="员工号" required autofocus>
        <label for="inputUsername" class="sr-only">username</label>
        <input type="text" name="username" class="form-control" placeholder="username" required autofocus>
        <label for="inputUsername" class="sr-only">email</label>
        <input type="text" name="email" class="form-control" placeholder="email" required autofocus>
        <label for="inputPassword" class="sr-only">password</label>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit" id="submitRe">注册</button>
      </form>

    </div> <!-- /container -->
  <script>
  function PostData() {
      $.ajax({
          type: "POST",
          url: "<%=request.getContextPath()%>/Register",
          async: false,
          data : $('#form1').serialize(),
          success: function(msg) {
        	  if(msg=="success"){
        		  alert(msg);
        		  window.location.href='<%=request.getContextPath()%>/index.jsp';
        	  }
        	  else{
        		 alert(msg);
        		 
        	  }
        		  
          }
      });
      return false;
  }
  </script>
  </body>
</html>