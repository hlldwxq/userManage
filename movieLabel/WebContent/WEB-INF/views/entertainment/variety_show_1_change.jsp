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
    <link rel="stylesheet" href="../public/css/title1.css" type="text/css">
    <link rel="stylesheet" href="../public/css/bootstrap.css" type="text/css">
    <style>
        .celebrity{
            display:block;
            position:relative;
            width:100%;
            margin: 0 auto;
            padding: 0;
            border: none;
        }
    </style>
    <title>嘉宾与主题推荐</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">嘉宾与主题推荐</h2>
    </div>
</div>

<div class="container">
	<div class="col-md-12">
	<div class="col-md-4"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <h2 class="page-header">热点话题</h2>
    </div>
    </div>
    <div class="col-md-5 col-md-offset-1">
        <ol>
            <li class="lead">爸爸去哪儿</li>
            <li class="lead">一年级</li>
            <li class="lead">XXX</li>
            <li class="lead">rua</li>
            <li class="lead">rua</li>
            <li class="lead">rua</li>
        </ol>
    </div>
    <div class="col-md-5 col-md-offset-1">
        <ol>
            <li class="lead">爸爸去哪儿</li>
            <li class="lead">一年级</li>
            <li class="lead">XXX</li>
            <li class="lead">rua</li>
            <li class="lead">rua</li>
            <li class="lead">rua</li>
        </ol>
    </div>
        <div class="col-md-3 col-md-offset-4">
            <div class="btn btn-primary btn-sm active" role="button">不感兴趣？换一批试试～～</div>
        </div>
    </div>
</div>


<div class="container">
	<div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
     	<h2 class="page-header">头条人物</h2>
	</div>
	
	<div class="col-md-10 col-md-offset-2">
			<div class="col-md-3 grid">
                <h3>舒淇</h3>
                <a href="#"><img class="img-responsive" src="../movie/image/舒淇.jpg"></a>
                <p>代表作品：《刺客聂隐娘》《非诚勿扰》</p>
            </div>
            <div class="col-md-3 grid">
                <h3>冯远征</h3>
                <a href="#"><img class="img-responsive" src="../movie/image/冯远征.jpg"></a>
                <p>代表作品：《不要和陌生人说话》</p>
            </div>
            <div class="col-md-3 grid">
                <h3>周杰伦</h3>
                <a href="variety show_2_change.html"><img class="img-responsive" src="../movie/image/周杰伦.jpg"></a>
                <p>代表作品：《不能说的秘密》</p>
            </div>
	</div>
 
</div>

<div class="container">       
    <div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
     	<h2 class="page-header">应用说明</h2>
	</div>
        	<div class="col-md-8 col-md-offset-2">
        		<p>通过娱乐热点、热播电视、电影等确定所请嘉宾，
        		再通过对相似嘉宾节目收视率，观众反响等，再次确认所请嘉宾，同时确定节目主题。</p>
        	</div>
        </div>
</div>
        <div class="text-right">
            <a href="#">更多>></a>
        </div>
    
</div>
<hr/>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
<script src="../public/js/jquery.js"></script>
<script src="../public/js/bootstrap.js"></script>
</body>
</html>