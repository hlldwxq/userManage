<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>根据姓名查找</title>
</head>
<body>
	<form action="find" method="post">
		要查找的用户姓名:
		<input type="text" name="uname" />
		<input type="submit" value="查找">
	</form>
	<a href="index">返回</a>
</body>
</html>