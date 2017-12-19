<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ <link rel="stylesheet" href="../css/firstpage.css" type="text/css">-->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../public/image/商标.png">
    <link rel="stylesheet" href="../public/css/font.css" type="text/css">
    <link rel="stylesheet" href="../public/css/title.css" type="text/css">
    <link rel="stylesheet" href="../public/css/bootstrap.css" type="text/css">
    <title>节目档期安排推荐</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">节目档期安排推荐</h2>
        <p>分析收视率，安排播出档期</p>
    </div>
</div>
<div class="container" style="margin-top: 20px">
	<div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">重播档期时间安排</h2>
    </div>
    <div class="col-md-9 col-md-offset-3">
        <p class="lead">推荐时间：</p>
        <p class="lead">推荐指数：</p>
        <p class="lead">推荐原因：</p>
    </div>
</div>
<div class="container" style="margin-top: 20px">
	<div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">本时段往期节目信息</h2>
    </div>
    <div class="col-md-9 col-md-offset-3">
    	<div class="col-md-3">
			<img class="img-responsive" src="../entertainment/image/快乐大本营.jpg">
			<p>20160101</p>
		</div>
		<div class="col-md-3">
			<img class="img-responsive" src="../entertainment/image/快乐大本营.jpg">
			<p>20160108</p>
		</div>
		<div class="col-md-3">
			<img class="img-responsive" src="../entertainment/image/快乐大本营.jpg">
			<p>20160117</p>
		</div>
    </div>
</div>
<div class="container" style="margin-top: 20px">
	<div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">本时段其他节目</h2>
    </div>
    <div class="col-md-9 col-md-offset-3">
        <div class="col-md-3">
        	<p>20160101</p>
			<img class="img-responsive" src="../entertainment/image/王牌对王牌.jpg">		
		</div>
		<div class="col-md-3">
			<p>20160108</p>
			<img class="img-responsive" src="../entertainment/image/奔跑吧.jpg">
		</div>
		<div class="col-md-3">
			<p>20160117</p>
			<img class="img-responsive" src="../entertainment/image/真心英雄.jpg">
		</div>
    </div>
</div>
<div class="container" style="margin-top: 20px">
	<div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">节目集锦播出推荐</h2>
    </div>
    <div class="col-md-9 col-md-offset-3">
        <p class="lead">推荐重播片段：</p>
        <p class="lead">推荐片段组合：</p>
    </div>
</div>
<hr/>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>