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
    <link rel="stylesheet" href="../public/css/title1.css" type="text/css">
    <link rel="stylesheet" href="../public/css/bootstrap.css" type="text/css">
    <title>预告拍摄</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">主创推荐报告</h2>
    </div>
</div>
<div class="container" style="margin-top: 20px">

    <form class="form-horizontal" role="form"  action="#" id="m_movinvest_up" name="form_1" method="#" autocomplete="off">
        <div class="form-group">
            <label for="m_movmaincast_f" class="col-sm-4 control-label">主演</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="m_movmaincast_f" value="<%=request.getAttribute("actors")%>">
            </div>
        </div>
        <div class="form-group">
            <label for="m_movdirector_r" class="col-sm-4 control-label">导演</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="m_movdirector_r" value="<%=request.getAttribute("directors")%>">
            </div>
        </div>
        <div class="form-group">
            <label for="m_movmake_r" class="col-sm-4 control-label">制作团队</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="m_movmake_r" value="<%=request.getAttribute("filmmaker")%>">
            </div>
        </div>
        <div class="form-group">
            <label for="m_moveffect_r" class="col-sm-4 control-label">特效公司</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="m_moveffect_r" value="<%=request.getAttribute("specialEffectsCompany")%>">
            </div>
        </div>
        <div class="row col-md-offset-6">
            <br>
            <button type="submit" class="btn">保存</button>
        </div>
    </form>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>