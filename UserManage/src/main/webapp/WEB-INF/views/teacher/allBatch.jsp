<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>所有批次</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
</head>
<body>
	<%@include file="base.jsp" %>
	<div class="container">
	    <div class="row clearfix">
		<div class="col-md-12 column">
		<table class="table table-striped">
		  <tr>
		  	<th>批次年份</th>
		  	<th>批次阶段</th>
		  	<th>批次级别</th>
		  	<c:if test="${sessionScope.teacher.power==1}">
		  	<th>更改</th>
		  	</c:if>
		  </tr>
		  <c:if test="${projectList==null}">
			<h2>没有批次</h2>
		  </c:if>
		  <c:if test="${batchList!=null}">
			<c:forEach items="${batchList}" var="batch">
			  <tr>
			  	<td>${batch.year} </td>
				<td>${batch.state}</td>
				<td>${batch.level} </td>
				<c:if test="${sessionScope.teacher.power==1}">
				<td><a href="nextState/${batch.year}/${batch.level}">下一阶段</a></td>
				</c:if>
			  </tr>
			 </c:forEach>
		</c:if>
		</table>
		</div>
		</div>
	</div>
	<!--  
	<c:if test="${batchList==null}">
		<h2>没有批次</h2>
	</c:if>
	<c:if test="${batchList!=null}">
		<c:forEach items="${batchList}" var="batch">	
			<p>批次年份：${batch.year} </p>
			<p>批次阶段：${batch.state} </p>
			<p>批次类型：${batch.level}  </p>
			<c:if test="${sessionScope.teacher.power==1}">
			<a href="nextState/${batch.year}/${batch.type}">下一阶段</a>
			</c:if>
			<br>
		</c:forEach>
	</c:if>
	
	<a href="index">返回</a>-->
</body>
</html>