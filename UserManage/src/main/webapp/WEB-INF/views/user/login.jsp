<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>用户登录</title>
</head>
	<body>
		<form action="login" method="post">
                               用户名： <input type = "text" name="Username"/>
                               密     码： <input type = "password" name="Userpassword"/>
            <input type="submit" value="登录"/> 
    	</form>
    	<a href="register">还没有账号？快来注册一个吧</a>
	</body>
</html>