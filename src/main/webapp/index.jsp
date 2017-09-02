<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">


    <title>员工管理系统登录</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

    
  </head>

  <body>

    <div class="container">

      <form name="form1" class="form-signin" method="post">
        <h2 class="form-signin-heading">请登陆</h2>
        <label for="inputUsername" class="sr-only">Username</label>
        <input type="text" name="username" class="form-control" placeholder="username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <div class="radio">
          <label>
            <input name="rdo" type="radio" value="1" onclick="document.form1.action='<%=request.getContextPath()%>/Login/Admin'"/>管理员
		  </label>
		  <label>
			<input name="rdo" type="radio" value="1" onclick="document.form1.action='<%=request.getContextPath()%>/Login/Employee'"/>普通员工
          </label>
        </div>
        <a href="<%=request.getContextPath()%>/register.jsp">新用户注册</a>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>

    </div> <!-- /container -->

  </body>
</html>