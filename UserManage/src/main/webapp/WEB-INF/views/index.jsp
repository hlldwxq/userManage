<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>温乔用户管理系统</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>	
</head>
<style>
	.btn{
		width:100%;
		height:50px;
		margin-top:10px;
		margin-bottom:15px;
	}
	a{
		width:80%;
		margin-right:auto;
		margin-left:auto;
	}
	.mylogin{
		background-color:#f5f5f5;
		padding:50px;
	}
</style>
	<body>
		<div class="container">
		    <div class="row clearfix">
				<div class="col-md-12 column" style="height:100px;">
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-3 column">
				</div>
				<div class="col-md-6 column mylogin">
					<h2>登录</h2>
					<a href="student/login"><button type="button" class="btn btn-success">学生登录</button></a><br>
		            <a href="teacher/login"><button type="button" class="btn btn-success">教师登录</button></a>
				</div>
				<div class="col-md-3 column">
				</div>
			</div>
		</div>
	</body>
</html>