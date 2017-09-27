<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户主页</title>
</head>
<body>
	<h1>用户${sessionScope.user.username}的主页</h1>
	<p>ID：${sessionScope.user.id}</p>
	<p>性别：${sessionScope.user.gender}</p>
	<p>密码：${sessionScope.user.userpassword}</p>
	<br>
	<br>
	<form action="find" method="post">
		<p>搜索用户 ：<input type="text" value="t" name="t" /></p>
		<input type="submit" value="Submit" />
	</form>
	<br>
	<br>
	<a href="logout">退出账号</a>
</body>
</html>