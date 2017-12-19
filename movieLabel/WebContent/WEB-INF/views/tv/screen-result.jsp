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
    <title>剧本筛选结果</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">预告拍摄分析报告</h2>
    </div>
</div>
<div class="container">
    <div class="row featurette">
        <div class="col-md-4"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">相似电视剧</h2>
        </div>
        <div class="col-md-8">
            <h3>欢乐颂</h3>
            <div class="row">
                <div class="col-md-4">
                    <img class="img-responsive" src="../tv/image/名词.png">
                    <p class="text-center">名词</p>
                </div>
                <div class="col-md-4">
                    <img class="img-responsive" src="../tv/image/名词.png">
                    <p class="text-center">动词</p>
                </div>
                <div class="col-md-4">
                    <img class="img-responsive" src="../tv/image/名词.png">
                    <p class="text-center">形容词</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row featurette">
        <div class="col-md-4"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">电视剧看点</h2>
        </div>
        <div class="col-md-8">
            <p class="lead">导演：</p>
            <p class="lead">话题：</p>
            <p class="lead">监制：</p>
            <p class="lead">主演：</p>
            <p class="lead">粉丝营销：</p>
        </div>
    </div>
    <div class="row featurette">
        <div class="col-md-4">
            <h2 class="page-header">预告片</h2>
        </div>
        <div class="col-md-8">
            <h2>参考片库：</h2><p>都市 偶像 古装</p>
            <h2>参考预告片：</h2><p>《电视剧名》</p>
            <h2>情感分析：</h2><p>《电视剧名》</p>
            <img class="img-responsive" src="../tv/image/名词.png">
        </div>
    </div>
    <div class="row featurette">
        <div class="col-md-4">
            <h2 class="page-header">投放建议</h2>
        </div>
        <div class="col-md-8">
            <p>1.xxx</p>
            <p>2.xxx</p>
            <p>3.xxx</p>
        </div>
    </div>
    <div class="row col-md-offset-6">
        <br>
        <button type="submit" class="btn">保存</button>
    </div>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>