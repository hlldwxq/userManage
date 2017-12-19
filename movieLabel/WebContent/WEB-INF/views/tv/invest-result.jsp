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
    <title></title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">投资决策分析报告</h2>
    </div>
</div>
<div class="container">
    <div class="row featurette">
        <div class="col-md-4"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">同类型电视剧《${result.get(0).name}》</h2>
        </div>
        <div class="col-md-8">
            <p class="lead">平均收视率：${result.get(0).rating}</p>
            <p class="lead">开播档期：${result.get(0).startTime}</p>
            <p class="lead">主创团队：暂无</p>
            <p class="lead">受众性别分布：${result.get(0).sexRange}</p>
            <p class="lead">受众年龄分布：${result.get(0).ageRange}</p>
            <p class="lead">观众满意度：${result.get(0).satisfaction}</p>
        </div>
    </div>
    <div class="row featurette">
        <div class="col-md-4"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">同类型20部电视剧</h2>
        </div>
        <div class="col-md-2 grid">
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/huanlesong.jpg">
            <p>《欢乐颂》</p>
        </div>
        <div class="col-md-2 grid">
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/langyabang.jpg">
            <p>《琅琊榜》</p>
        </div>
        <div class="col-md-2 grid">
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/weiwei.jpg">
            <p>代表作品：《微微一笑很倾城》</p>
        </div>
        <div class="col-md-2 grid">
            <a href="#">>>换一批</a>
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