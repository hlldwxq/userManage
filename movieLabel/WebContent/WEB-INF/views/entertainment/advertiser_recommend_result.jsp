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
    <title>广告商选择</title>
</head>
<body>
<%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">广告商推荐报告</h2>
        <p>基于观众特点与节目特色的海量数据分析，为您推荐最合适的广告商</p>
    </div>
</div>
<div class="container" style="margin-top: 20px">
    <div class="col-md-5 col-md-offset-1"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <img class="img-responsive" src="../entertainment/image/vivo广告.jpg">
    </div>
    <div class="col-md-5 col-md-offset-1">
        <h1>vivo</h1>
        <p class="lead">推荐指数：</p>
        <p class="lead">推荐原因：</p>
        <p class="lead">广告费用：</p>
        <p class="lead">广告商特点：</p>
        <p class="lead">代言明星：</p>
        <p class="lead">广告受众：</p>
    </div>
</div>
<div class="container" style="margin-top: 20px">
    <div class="col-md-5 col-md-offset-1"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <img class="img-responsive" src="../entertainment/image/oppo广告.jpg">
    </div>
    <div class="col-md-5 col-md-offset-1">
        <h1>oppo</h1>
        <p class="lead">推荐指数：</p>
        <p class="lead">推荐原因：</p>
        <p class="lead">广告费用：</p>
        <p class="lead">广告商特点：</p>
        <p class="lead">代言明星：</p>
        <p class="lead">广告受众：</p>
    </div>    
</div>
<div class="container" style="margin-top: 20px">
    <div class="col-md-5 col-md-offset-1"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <img class="img-responsive" src="../entertainment/image/面膜.jpg">
    </div>
    <div class="col-md-5 col-md-offset-1">
        <h1>M'SPIRIT</h1>
        <p class="lead">推荐指数：</p>
        <p class="lead">推荐原因：</p>
        <p class="lead">广告费用：</p>
        <p class="lead">广告商特点：</p>
        <p class="lead">代言明星：</p>
        <p class="lead">广告受众：</p>
    </div>   
</div>
<div class="container">
    <div class="row col-md-offset-6">
        <br>
        <button type="submit" class="btn">保存</button>
    </div>
</div>
<hr/>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>