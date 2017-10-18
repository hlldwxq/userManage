<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>我的项目</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	</head>

<body>
    <%@include file="../base.jsp" %>
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
			  	<th>申请评分</th>
			  	<th>结项评分</th>
		  	</tr>
			<c:if test="${projectList==null}">
				<h2>没有项目</h2>
			</c:if>
			<c:if test="${projectList!=null}">
				<c:forEach items="${projectList}" var="project">	
					<tr>
					<td>${project.projectId} </td>
					<td>${project.projectName} </td>
					<td>${project.projectTeacher}  </td>
					<td>${project.projectLeading}  </td>
					<td>${project.projectLevel}  </td>
					<td>${project.projectType}  </td>
					<td>${project.projectState}  </td>
					<c:if test="${project.projectState==1 && project.firstGrade==null}">
					<td>
						<form action="examine/${project.projectId}" method="post">
							申请评分：<input type="text" name="grade" />
							<input type="submit" value="确定">
						</form>
					</td>
					</c:if>
					<c:if test="${project.projectState==1 && project.firstGrade!=null}">
						<td>${project.firstGrade}</td>
					</c:if>
					<td>
					<c:if test="${project.projectState==4 && project.secondGrade==null}">
						<form action="knot/${project.projectId}" method="post">
							结项评分：<input type="text" name="grade" />
							<input type="submit" value="确定">
						</form>
					</c:if>
					</td>
				</c:forEach>
			</c:if>
		</table>
		</div>
		</div>
		</div>
</body>
</html>