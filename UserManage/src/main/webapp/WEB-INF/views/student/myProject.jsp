<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<%@page import="com.wq.StudentProject"%>
<%@page import="com.wq.ProjectBatch"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>我的项目</title>
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
		  	<th>项目编号</th>
		  	<th>项目名称</th>
		  	<th>指导老师</th>
		  	<th>项目负责人</th>
		  	<th>项目级别</th>
		  	<th>项目类型</th>
		  	<th>项目状态</th>
		  	<th>审核老师</th>
		  	<th>申请评分</th>
		  	<th>结项评分</th>
		  	<th>详情</th>
		  </tr>
		  
		<c:if test="${myProject!=null}">
			<c:forEach items="${myProject}" var="project">
			  <tr>
			  	<td>${project.projectId}</td>
			  	<td>${project.projectName}</td>
			  	<td>${project.teacherName}</td>
			  	<td>${project.leadingName}</td>
			  	<td>
			  		<c:if test="${project.projectLevel==0}">
			  			国家级
			  	    </c:if>
			  	    <c:if test="${project.projectLevel==1}">
			  			北京市级
			  	    </c:if>
			  	</td>
			  	<td>
			  		<c:if test="${project.projectType==0}">
			  			创新项目
			  	    </c:if>
			  	    <c:if test="${project.projectType==1}">
			  			创业项目
			  	    </c:if>
			  	</td>
			  	<td>
			  		<c:if test="${project.projectState==-1}">
			  			结项失败
			  	    </c:if>
			  	    <c:if test="${project.projectState==0}">
			  			申请失败
			  	    </c:if>
			  	    <c:if test="${project.projectState==1}">
			  			申请中
			  	    </c:if>
			  	    <c:if test="${project.projectState==2}">
			  			申请完成
			  	    </c:if>
			  	    <c:if test="${project.projectState==3}">
			  			项目中期
			  	    </c:if>
			  	    <c:if test="${project.projectState==4}">
			  			准备结项
			  	    </c:if>
			  	     <c:if test="${project.projectState==5}">
			  			已结项
			  	    </c:if>
			  	</td>
			  	<td>${expertName}</td>
			  	<td>${(project.firstGrade1+project.firstGrade2+project.firstGrade3)/3}</td>
			  	<td>${(project.secondGrade1+project.secondGrade2+project.secondGrade3)/3}</td>
			  	<td><a href="detail/${project.projectId}">项目详情</a></td>
			  </tr>
			 </c:forEach>
		</c:if>
		</table>
		</div>
		</div>
	</div>
</body>
</html>