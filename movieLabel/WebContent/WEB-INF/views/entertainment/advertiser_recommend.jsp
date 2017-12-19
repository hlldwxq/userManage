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
        <h2 style="font-family: 微软雅黑">广告商选择</h2>
        <p>基于观众特点与节目特色的海量数据分析，为您推荐最合适的广告商</p>
    </div>
</div>
    <div class="container" style="margin-top: 20px">
        <form class="form-horizontal" role="form"  action="#" id="m_movinvest_form" name="form_1" method="#" autocomplete="off">
            <div class="form-group">
                <label for="m_movname" class="col-sm-4 control-label">节目名称</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="m_movname" placeholder="请输入节目名">
                </div>
            </div>
            <div class="form-group">
                <label for="m_movcast" class="col-sm-4 control-label">节目特点</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="m_movcast" placeholder="请输入节目特点">
                </div>
            </div>
            <div class="form-group">
                <label for="m_movpublisher" class="col-sm-4 control-label">观众属性</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="m_movpublisher" placeholder="请输入观众属性">
                </div>
            </div>
            <div class="form-group">
                <label for="m_movoutline" class="col-sm-4 control-label">要求具体描述</label>
                <div class=" col-sm-6">
                    <textarea class="form-control" id="m_movoutline" rows="3"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-6 col-sm-6">
                    <a href="${pageContext.request.contextPath}/entertainment/advertiser_recommend_result"><button type="button" class="btn">提交生成分析报告</button></a>
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