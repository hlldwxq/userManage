<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>查找</title>
	</head>
	<body>
		<c:if test="${list.isEmpty()}">
			<h2>没有相关用户</h2>
		</c:if>
		<c:if test="${!list.isEmpty()}">
			<c:forEach items="${list}" var="user">	
				<div>
					<p>用户ID：${user.id} </p>
					<p>用户名：${user.username} </p>
					<p>性别：${user.gender}  </p><br>
				</div>
			</c:forEach>
		</c:if>
		<a href="index">返回</a>
	</body>
</html>