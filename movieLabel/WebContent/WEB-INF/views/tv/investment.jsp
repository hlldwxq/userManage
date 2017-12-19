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
    <title>投资决策</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">投资决策</h2>
        <p>紧跟市场风向标，分析您的投资方案。</p>
    </div>
</div>
<div class="container" style="margin-top: 20px">

    <form class="form-horizontal" role="form"  action="${pageContext.request.contextPath}/tv/invest-result" id="m_movinvest_form" name="form_1" method="post" autocomplete="off">
        <div class="form-group">
            <label for="m_movname" class="col-sm-4 control-label">电视剧名</label>
            <div class="col-sm-6">
                <input name="moviename" type="text" class="form-control" id="m_movname" placeholder="请输入电视剧名">
            </div>
        </div>
        <div class="form-group">
            <label for="m_movdirector" class="col-sm-4 control-label">导演</label>
            <div class="col-sm-6">
                <input name="director" type="text" class="form-control" id="m_movdirector" placeholder="请输入导演姓名">
            </div>
        </div>
        <div class="form-group">
            <label for="m_movcast" class="col-sm-4 control-label">主演</label>
            <div class="col-sm-6">
                <input name="cast" type="text" class="form-control" id="m_movcast" placeholder="请输入主演姓名">
            </div>
        </div>
        <div class="form-group">
            <label for="m_movtype" class="col-sm-4 control-label">类型</label>
            <div class="col-sm-6">
                <input name="type" type="text" class="form-control" id="m_movtype" placeholder="请输入电视剧类型">
            </div>
        </div>
        <div class="form-group">
            <label for="m_movoutline" class="col-sm-4 control-label">剧本大纲</label>
            <div class=" col-sm-6">
                <textarea name="outline" class="form-control" id="m_movoutline" rows="3"></textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-6 col-sm-6">
                <button type="submit" class="btn">提交生成分析报告</button>
            </div>
        </div>
    </form>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>