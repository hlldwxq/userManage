<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>增加新批次</title>
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
	<%@include file="../base.jsp" %> 
	
	<div class="container mytable">
	    <div class="row clearfix">
	    <div class="col-md-2 column">
	    </div>
		<div class="col-md-8 column">
		<form class="form-horizontal" action="newBatch" method="post">
			<div class="form-group">
				<label class="col-sm-2 control-label">年份：</label>
			    <div class="col-sm-10">
				<input class="form-control" type="text" name="year"/>
		    	</div>
	    	</div>
	    	<div class="form-group">
				<label class="col-sm-2 control-label">级别：</label>
			    <div class="col-sm-10">
			    <select class="form-control" name="level">
					<option value=1>国家级</option>
					<option value=2>北京市级</option>
				</select>
		    	</div>
	    	</div>
	    	<div class="form-group">
				<label class="col-sm-2 control-label">状态：</label>
			    <div class="col-sm-10">
				<select class="form-control" name="state">
					<option value=1>申请阶段</option>
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