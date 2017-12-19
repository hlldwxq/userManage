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
    <title>主创推荐</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">主创推荐</h2>
        <p>从海量电视剧资料中选择适合您的项目的主创团队</p>
    </div>
</div>
<div class="container" style="margin-top: 20px">
    <form class="form-horizontal" role="form"  action="${pageContext.request.contextPath}/tv/creator-result" id="m_movcreator_form" name="form_1" method="post" autocomplete="off">
        <div class="form-group">
            <label for="m_movtopic" class="col-sm-4 control-label">题材</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="topic" id="m_movtopic" placeholder="请输入需要的题材">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4">导演</label>
            <div class="controls col-sm-6">
                <label class="radio-inline">
                    <input id="m_movdir1" name="director" value="大陆" checked="checked" type="radio">
                    大陆
                </label>
                <label class="radio-inline">
                    <input id="m_movdir2" name="director" value="港台" type="radio">
                    港台
                </label>
                <label class="radio-inline">
                    <input id="m_movdir3" name="director" value="欧美" type="radio">
                    欧美
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4">女演员</label>
            <div class="controls col-sm-6">
                <label class="radio-inline">
                    <input id="m_movactress1" name="actress" value="大陆" checked="checked" type="radio">
                    大陆
                </label>
                <label class="radio-inline">
                    <input id="m_movactress2" name="actress" value="港台" type="radio">
                    港台
                </label>
                <label class="radio-inline">
                    <input id="m_movactress3" name="actress" value="欧美" type="radio">
                    欧美
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4">男演员</label>
            <div class="controls col-sm-6">
                <label class="radio-inline">
                    <input id="m_movactor1" name="actor" value="大陆" checked="checked" type="radio">
                    大陆
                </label>
                <label class="radio-inline">
                    <input id="m_movactor2" name="actor" value="港台" type="radio">
                    港台
                </label>
                <label class="radio-inline">
                    <input id="m_movactor3" name="actor" value="欧美" type="radio">
                    欧美
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4">制作</label>
            <div class="controls col-sm-6">
                <label class="radio-inline">
                    <input id="m_movmake1" name="maker" value="大陆" checked="checked" type="radio">
                    大陆
                </label>
                <label class="radio-inline">
                    <input id="m_movmake2" name="maker" value="港台" type="radio">
                    港台
                </label>
                <label class="radio-inline">
                    <input id="m_movmake3" name="maker" value="欧美" type="radio">
                    欧美
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4">特效</label>
            <div class="controls col-sm-6">
                <label class="radio-inline">
                    <input id="m_moveffert1" name="effect" value="大陆" checked="checked" type="radio">
                    大陆
                </label>
                <label class="radio-inline">
                    <input id="m_moveffert2" name="effect" value="港台" type="radio">
                    港台
                </label>
                <label class="radio-inline">
                    <input id="m_moveffert3" name="effect" value="欧美" type="radio">
                    欧美
                </label>
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