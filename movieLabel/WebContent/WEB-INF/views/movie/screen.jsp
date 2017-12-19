<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
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
    <title>剧本筛选</title>
</head>
<body>
<%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">剧本筛选</h2>
        <p>先进的语义识别技术，帮助您在海量剧本中发现商机。</p>
    </div>
</div>
<div class="container" style="margin-top: 20px">

    <form class="form-horizontal" role="form"  action="${pageContext.request.contextPath}/movie/screen-result" method="post" enctype="multipart/form-data" id="m_movinvest_up" name="form_1" autocomplete="off">
        <div class="form-group">
            <label for="m_movup" class="col-sm-4 control-label">上传待筛选剧本</label>
            <div class="col-sm-6">
                <input class="input-file" id="m_movup" type="file" name="uploadFile">
            </div>
        </div>
        <div class="form-group">
            <label for="m_movdirector" class="col-sm-4 control-label">筛选题材</label>
            <div class="col-sm-6">
                <input type="text" name="type" class="form-control" id="m_movdirector" value="${movieBasic.type }" placeholder="请输入需要的题材">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-6 col-sm-6">
                <button type="submit" class="btn"><a href="">提交生成分析报告</a></button>
            </div>
        </div>
    </form>
    <form class="form-horizontal" role="form"  action="#" id="m_movscreen-form" name="form_1" method="#" autocomplete="off">
        <div class="form-group">
            <label for="m_movscreen-result" class="col-sm-4 control-label">筛选结果</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="m_movscreen-result" rows="3"></textarea>
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