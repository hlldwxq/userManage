<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<%@page import="com.wq.Teacher"%>
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
			  	<th>详情</th>
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
					<c:if test="${project.projectState==1}">
					<td>
					    <c:if test="${project.firstTeacher!=null}">
					    <c:set var="name" value="${project.firstTeacher}" scope="session"></c:set>
					         <%
					    	  String name = (String)session.getAttribute("name");
					    	  String[] names = name.split(" ");
					    	  int j=-1;
					    	  Teacher t = (Teacher)session.getAttribute("teacher");
						    	for(int i=0;i<names.length;i++){
						    		
						    		if(names[i].equals(t.getId())){
						    			j = i;
						    			break;
						    		}
						    	}
						      if(j<0){%>
						    	<form action="examine/${project.projectId}" method="post">
									申请评分：<input type="text" name="grade" />
									<input type="submit" value="确定">
								</form>
						      <%}else{%>
						    	 ${(project.firstGrade1+project.firstGrade2+project.firstGrade3)/3}
						      <%}
					    	%>
					    </c:if>
					    <c:if test="${project.firstTeacher==null}">
						<form action="examine/${project.projectId}" method="post">
							申请评分：<input type="text" name="grade" />
							<input type="submit" value="确定">
						</form>
						</c:if>
					</td>
					</c:if>
					<c:if test="${project.projectState!=1}">
						<td>${(project.firstGrade1+project.firstGrade2+project.firstGrade3)/3}</td>
					</c:if>
					<c:if test="${project.projectState==4}">
					<td>
					    <c:if test="${project.secondTeacher!=null}">
					    <c:set var="name" value="${project.secondTeacher}" scope="session"></c:set>
					    	<%
					    	  String name = (String)session.getAttribute("name");
					    	  String[] names = name.split(" ");
					    	  int j=-1;
					    	  Teacher t = (Teacher)session.getAttribute("teacher");
						    	for(int i=0;i<names.length;i++){
						    		if(names[i].equals(t.getId())){
						    			j = i;
						    			break;
						    		}
						    	}
						      if(j<0){
						     %>
						    	<form action="knot/${project.projectId}" method="post">
									结项评分：<input type="text" name="grade" />
									<input type="submit" value="确定">
								</form>
						      <%}else{%>
						    	 ${(project.secondGrade1+project.secondGrade2+project.secondGrade3)/3}
						      <%}
					    	%>
					    </c:if>
					    <c:if test="${project.secondTeacher==null}">
					    	<form action="knot/${project.projectId}" method="post">
									结项评分：<input type="text" name="grade" />
									<input type="submit" value="确定">
								</form>
					    </c:if>
					</td>
					</c:if>
					<c:if test="${project.projectState!=4}">
						<td> ${(project.secondGrade1+project.secondGrade2+project.secondGrade3)/3}</td>
					</c:if>
					
					<td><a>详情</a></td>
				</c:forEach>
			</c:if>
		</table>
		</div>
		</div>
		</div>
</body>
</html>