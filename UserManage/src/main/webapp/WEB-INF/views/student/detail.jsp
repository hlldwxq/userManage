<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>项目详情</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
</head>
<body>
	<%@include file="base.jsp" %>
	<div>
		<p>项目名称：${project.projectName}</p>
		<p>项目老师：${project.projectTeacher}</p>
		<p>项目负责人：${project.projectLeading}</p>
		<p>文件</p>
	    <c:forEach items="${filelist}" var="f">
			<p><a href="download/${f.id}">${f.file} 下载</a></p>
		</c:forEach>
		<p>中期文件提交：</p>
		<form action="middleFile/${project.projectId}" method="post" enctype="multipart/form-data">
			<input type="file" name="middleFile"/>
			<input type="submit" value="提交">
		</form>
	</div>
</body>
</html>