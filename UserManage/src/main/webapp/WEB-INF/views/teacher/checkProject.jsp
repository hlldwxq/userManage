<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>项目</title>
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
		  	<th>申请评分</th>
		  	<th>结项评分</th>
		  	<th>审核老师</th>
		  	<th>审核</th>
		  </tr>
		  <c:if test="${projectList==null}">
			<h2>没有项目</h2>
		</c:if>
		<c:if test="${projectList!=null}">
			<c:forEach items="${projectList}" var="project">
			  <tr>
			  	<td>${project.projectId}</td>
			  	<td>${project.projectName}</td>
			  	<td>${project.projectTeacher}</td>
			  	<td>${project.projectLeading}</td>
			  	<td>${project.projectLevel}</td>
			  	<td>${project.projectType}</td>
			  	<td>${project.projectState}</td>
			  	<td>${project.firstGrade}</td>
			  	<td>${project.secondGrade}</td>
			  	<c:if test="${project.projectState==1}">
				<c:if test="${project.projectExpert==null}">
				    <td>
					<form action="expert/${project.projectId}" method="post">             
	                                                     分配审核老师：
						<select name="expert">
						<c:forEach items="${expert}" var="e">
							<option value="${e.id}">${e.teacherName}</option>
						</c:forEach>
						</select>
			            <input type="submit" value="确定"/>  
			    	</form>
			    	</td>
				</c:if>
				<c:if test="${project.projectExpert!=null}">
				    <td>${project.projectExpert} </td>
				</c:if>
				<td><a href="projectPass/${project.projectId}"><button>审核通过</button></a></td>
			    </c:if>
			 </tr>
			 </c:forEach>
		</c:if>
		</table>
		</div>
		</div>
	</div>
	<!-- 
	<c:forEach items="${projectList}" var="project">	
		<p>项目名称：${project.projectName} </p>
		<p>项目指导老师：${project.projectTeacher} </p>
		<p>项目负责人：${project.projectLeading}  </p>
		<p>项目年份：${project.projectDate} </p>
		<p>项目状态：${project.projectState} </p>
		<p>项目类型：${project.projectType} </p>
		<c:if test="${project.projectState>1}">
			<p>审核老师：${project.projectExpert} </p>
		</c:if>
		<p>审核得分：${project.firstGrade} </p>
		<c:if test="${project.projectState==1}">
			<c:if test="${project.projectExpert==null}">
				<form action="expert/${project.projectId}" method="post">             
                                                     分配审核老师：
					<select name="expert">
					<c:forEach items="${expert}" var="e">
						<option value="${e.id}">${e.teacherName}</option>
					</c:forEach>
					</select>
		            <input type="submit" value="确定"/>  
		    	</form>
			</c:if>
			<c:if test="${project.projectExpert!=null}">
			    <p>审核老师：${project.projectExpert} </p>
			</c:if>
			<a href="projectPass/${project.projectId}"><button>审核通过</button></a>
		</c:if>
		<br>
	</c:forEach>-->
</body>
</html>