<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ <link rel="stylesheet" href="../css/firstpage.css" type="text/css">-->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../public/image/商标.png">
    <link rel="stylesheet" href="../public/css/font.css" type="text/css">
    <link rel="stylesheet" href="../public/css/title.css" type="text/css">

    <title>娱乐大数据系统</title>

    <!-- Bootstrap core CSS -->
    <link href="../public/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../public/css/carousel.css" rel="stylesheet">
    <script src="../public/js/echarts.js"></script>
</head>
<!-- NAVBAR
================================================== -->
<body>
 <%@include file="../frame/header.jsp" %>
<!-- Carousel
================================================== -->
<div class="jumbotron" style="margin-top: 60px;">
    <div class="container">
        <h1 style="font-family: 微软雅黑">娱乐大数据系统</h1>
        <p>海量综艺节目数据库<br>先进大数据算法<br>全方位节目制作推荐</p>
        <p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more »</a>
        </p>
    </div>
</div>
<div class="container">
    
     <div class="row">
            <div class="center-block">
                <div class="col-md-12">
                    <div class="div997">
                        <div class="bigbox">
                            <h2 class="text-center">简介</h2>
                            <h3 class="text-center">智能标签在综艺节目中的实际应用与成果...</h3>
                            <hr/>
                            <div class="boxleft">
                                <a href="${pageContext.request.contextPath}/entertainment/guest_theme_recommend?comment=1"><div class="box" id="pic_1">
                                    <div class="div998">
                                        <h4 class="text-center">嘉宾与主题推荐</h4>
                                        <h5 class="text-center">简单介绍模板主要内容aaaaaaaaaaaaaaaaaaaaa</h5>
                                    </div>
                                </div></a>
                                <a href="${pageContext.request.contextPath}/entertainment/user_data"><div class="box" id="pic_3">
                                    <div class="div998">
                                        <h4 class="text-center">观众信息参考</h4>
                                        <h5 class="text-center">简单介绍模板主要内容</h5>
                                    </div>
                                </div></a>
                                <a href="${pageContext.request.contextPath}/entertainment/advertiser_recommend"><div class="box" id="pic_4">
                                    <div class="div998">
                                        <h4 class="text-center">广告商选择</h4>
                                        <h5 class="text-center">简单介绍模板主要内容</h5>
                                    </div>
                                </div></a>
                            </div>
                            <div class="boxright">
                                <a href="${pageContext.request.contextPath}/entertainment/program_schedule_arrangement"><div class="box" id="pic_2">
                                    <div class="div998">
                                        <h4 class="text-center">节目档期安排推荐</h4>
                                        <h5 class="text-center">简单介绍模板主要内容</h5>
                                    </div>
                                </div></a>
                                <a href="${pageContext.request.contextPath}/entertainment/content_arrangement"><div class="box" id="pic_5">
                                    <div class="div998">
                                        <h4 class="text-center">节目内容安排</h4>
                                        <h5 class="text-center">简单介绍模板主要内容</h5>
                                    </div>
                                </div></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    
    
        
        
    </div>
</div>
<!--嘉宾与主题推荐 -->
<div class="container">
    <!--style="background-color: rgba(65, 122, 210, 0.10)"-->
    <div id="mov_recommend" class="row featurette">
        <h1 class="page-header">
            嘉宾与主题推荐
        </h1>
        <div class="row featurette">
            <div class="col-md-5"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                 <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="../entertainment/image/嘉宾与主题推荐.jpg" data-holder-rendered="true">
            </div>
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/entertainment/guest_theme_recommend">
                        大数据智能推荐
                    </a>
                </h2>
                <p class="lead">通过热点话题、节目特点等数据，为您推荐嘉宾和主题。海量标签匹配，预测收视率，为您提供最优选择。</p>
            </div>
        </div>
    </div>
</div>
<!--节目内容安排 -->
<div class="container"> <!--  style="background-color: rgba(65, 122, 210, 0.10)"-->
    <div id="mov_publish" class="row featurette">
        <h1 class="page-header">
            <a  class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            节目内容安排推荐
        </h1>
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/entertainment/content_arrangement">
                        节目环节搭配
                    </a>
                </h2>
                <p class="lead">节目内容片段化分类，全方位数据分析，推荐最适合嘉宾与主题的活动内容。</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="../entertainment/image/节目内容安排1.jpg" data-holder-rendered="true">
            </div>
        </div>
        <div class="row featurette">
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="../entertainment/image/节目内容安排2.jpg" data-holder-rendered="true">
            </div>
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/entertainment/content_arrangement">
                        环节时间安排
                    </a>
                </h2>
                <p class="lead">分时段、分环节的收视率分析，为您安排各环节播出顺序及时长 。</p>
            </div>
        </div>
    </div>
</div>
<!--节目档期安排 -->
<div class="container">
    <div id="mov_make" class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            节目档期安排推荐
        </h1>
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/entertainment/program_schedule_arrangement">
                        节目档期播出推荐
                    </a>
                </h2>
                <p class="lead">基于全面的收视影响因素综合分析，安排最佳播出档期</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="../entertainment/image/节目档期安排.jpg" data-holder-rendered="true">
            </div>
        </div>
        
    </div>
</div>

<!--用户信息参考 -->
<div class="container">
    <div class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            观众信息参考
        </h1>
        <div id="mov_trailer" class="row featurette">
        	<div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="../entertainment/image/用户信息参考.jpg" data-holder-rendered="true">
            </div>
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="../entertainment/user_information.html">
                        观众信息参考建议
                    </a>
                </h2>
                <p class="lead">基于海量数据进行观众属性分析、观众情感分析 为确定节目主题和嘉宾，安排节目环节和顺序时长等提供支持点</p>
            </div>
            
        </div>
    </div>
</div>

<!--广告商选择 -->
<div class="container">
    <div class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            广告商选择
        </h1>
        <div id="mov_trailer" class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/entertainment/advertiser_recommend">
                        广告商招标建议
                    </a>
                </h2>
                <p class="lead">分析观众属性及节目内容标签 基于海量数据给出广告商选择建议</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="../entertainment/image/广告商推荐.jpg" data-holder-rendered="true">
            </div>
        </div>
    </div>
</div>
<hr/>
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>

<!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../public/js/jquery.js"></script>
<script>window.jQuery || document.write('<script src="../public/js/jquery.js"><\/script>')</script>
<script src="../public/js/bootstrap.js"></script>
<style>
    h1,h2{
        margin-left: 20px;
        margin-right: 20px;
    }
    
    #mov_a1 {
        height: 360px;
        width: 200px;
        background: url("../movie/image/mov_red.jpg");
    }
    #mov_a2 {
        height: 180px;
        width: 300px;
        background: url("../movie/image/mov_blue.jpg");
    }
    #mov_a3 {
        height: 180px;
        width: 300px;
        background: url("../movie/image/mov_yellow.jpg");
    }
    #mov_a4 {
        height: 150px;
        width: 500px;
        background: url("../movie/image/mov_pink.jpg");
    }
    .bigbox{
            position:relative;
            display:inline-block;
            margin: 20px;
            padding: 0;
            border: none;
            width: 900px;
            background-color: transparent;
        }
        .box{
            position: relative;
            display: block;
            overflow: hidden;
            float: left;
            margin: 0 auto;
            padding: 0;
            border: none;
            color: white;
            text-align: center;
            vertical-align: middle;
        }
        .boxleft{
            position: relative;
            width:500px;
            display: block;
            overflow: hidden;
            float: left;
            margin: 0 auto;
            padding: 0;
            border: none;
            color: white;
            text-align: center;
            vertical-align: middle;
        }
        .boxright{
            position: relative;
            width:400px;
            display: block;
            overflow: hidden;
            float: left;
            margin: 0 auto;
            padding: 0;
            border: none;
            color: white;
            text-align: center;
            vertical-align: middle;
        }
        .div998{
            position:absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
        }
        .div997{
            position:relative;
            text-align: center;
        }
        #pic_1
        {
            height:300px;
            width:500px;
            background-color: #ec971f;
        }
        #pic_2
        {
            height:250px;
            width:400px;
            background-color: #d43f3a;
        }
        #pic_3
        {
            height:300px;
            width:350px;
            background-color: seagreen;
        }
        #pic_4
        {
            height:300px;
            width:150px;
            background-color: cornflowerblue;
        }
        #pic_5
        {
            height:350px;
            width:400px;
            background-color: #46b8da;
        }
</style>
</body>
</html>
