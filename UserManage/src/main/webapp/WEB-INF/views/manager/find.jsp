<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>查找</title>
</head>
<body>
	<c:if test="${user==null}">
		<h2>没有该用户</h2>
	</c:if>
	<c:if test="${user!=null}">
		<div>
			<p>用户ID：${user.id} </p>
			<p>用户名：${user.uname} </p>
			<p>密码：${user.upassword} </p>
			<p>性别：${user.gender}  </p><br>
		</div>
	</c:if>
	<a href="find">返回</a>
</body>
</html>