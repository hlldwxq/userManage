<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.wq.StudentProject"%>
<%@page import="com.wq.ProjectBatch"%>
<html>
	<head>
		<title>项目申请</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	</head>
	<style>
		.mytable{
		    padding-top:30px;
		    padding-bottom:30px;
			background-color:#f5f5f5;
		}
	</style>
	<body>
		<%@include file="base.jsp" %>
		<div class="container mytable">
	    <div class="row clearfix">
	    <div class="col-md-2 column">
	    </div>
		<div class="col-md-8 column">
		<form class="form-horizontal" action="projectApplication" method="post">
			<div class="form-group">
				<label class="col-sm-2 control-label">年份：</label>
			    <div class="col-sm-10">
				<select class="form-control" name="projectDate">
					<option value="${batch.year}">${batch.year}</option>
		    	</select>
		    	</div>
	    	</div>
	    	<div class="form-group">
				<label class="col-sm-2 control-label">项目名称：</label>
				<div class="col-sm-10">
				<input class="form-control" type="text" name="projectName"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">指导老师：</label>
				<div class="col-sm-10">
				<select name="projectTeacher" class="form-control">
				<c:forEach items="${teacher}" var="t">
					<option value="${t.id}">${t.teacherName}</option>
				</c:forEach>
				</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">项目负责人：</label>
				<div class="col-sm-10">
				<input class="form-control" type="text" name="projectLeading"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">项目级别：</label>
				<div class="col-sm-10">
				<select name="projectLevel" class="form-control">
					<option value="${batch.level}">${batch.level} </option>
		    	</select>
		    	<span>0:国家级</span><br><span>1:北京市级</span>
	    		</div>
	    	</div>
	    	<div class="form-group">
				<label class="col-sm-2 control-label">项目类型：</label>
				<div class="col-sm-10">
				<select name="projectType" class="form-control">
					<option value="<%=StudentProject.NEW_IDEA%>"><%=StudentProject.allType[0]%></option>
					<option value="<%=StudentProject.OPEN_SHOP%>"><%=StudentProject.allType[1]%></option>
				</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">项目状态：</label>
				<div class="col-sm-10">
				<select name="projectState" class="form-control">
					<option value="<%=StudentProject.WAIT_PASS%>"><%=StudentProject.allState[2]%></option>
		    	</select>
		    	</div>
		    </div>
	    	<input type="submit" value="提交">
		</form>	
		</div>
		<div class="col-md-2 column">
	    </div>
		</div>
		</div>
	</body>
</html>