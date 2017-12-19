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
    <link rel="stylesheet" href="../public/css/bootstrap.css" type="text/css">
    <title>观众信息参考</title>
    <style>
        .rua1{
            width: 100%;
            height:300px;
            background-color: #46b8da;
        }
        .rua2{
            width: 100%;
            font-size:15px;
        }
        .rua2 p{
            line-height: calc( 300px - 15px);
        }
        .box1{
            height:400px;
            width:40%;
            margin:0;
            position:relative;
            float: left;
        }
        .box1:nth-of-type(1){
            margin-left: calc((100% - 90%) / 2);
        }
        .box2{
            height:400px;
            width:10%;
            float: left;
            position:relative;
        }
        .box_a{
            height:33%;
            width:100%;
            position:absolute;
            left:0;
            top:0;
        }
        .box_b{
            height:33%;
            width:100%;
            position:absolute;
            left:0;
            top:33%;
        }
        .box_c{
            height:33%;
            width:100%;
            position:absolute;
            left:0;
            top:66%;
        }
        .yuan1{
            width:80px;
            height:80px;
            background-color: #46b8da;
            position:relative;
            top:50px;
            left:calc((100% - 80px) / 2);
            border-radius:50%;
            text-align:center;
        }
        .yuan1 p{
            font-size:22px;
            padding-top:24px;
            font-weight:500;
        }
        .yuan2{
            width:80px;
            height:80px;
            background-color: #31708f;
            position:relative;
            top:75px;
            left:calc((100% - 80px) / 2);
            border-radius:50%;
            text-align:center;
        }
        .yuan2 p{
            font-size:22px;
            padding-top:24px;
            font-weight:500;
        }
        .yuan3{
            width:80px;
            height:80px;
            background-color: #46b8da;
            position:relative;
            top:100px;
            left:calc((100% - 80px) / 2);
            border-radius:50%;
            text-align:center;
        }
        .yuan3 p{
            font-size:22px;
            padding-top:24px;
            font-weight:500;
        }
        .yuan1:hover{
            background-color: #eea236;
        }
        .yuan2:hover{
            background-color: #4cae4c;
        }
        .yuan3:hover{
            background-color: #eea236;
        }
        .xian{
            position:absolute;
            height:200px;
            width:2px;
            background-color: #999999;
            left:calc((100% - 2px)/2);
            top:100px;
        }
    </style>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">观众信息参考</h2>
    </div>
</div>
<div class="container">
    <div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <h2 class="page-header">观众属性分析</h2>
    </div>
    <div class="col-lg-6">
        <div class="text-center">
            <h4>用户性别比例</h4>
            <hr/>
            <div class="rua1">
                <div class="rua2 text-center">
                    <p>
                        在这里插入图片
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="text-center">
            <h4>用户年龄特点</h4>
            <hr/>
            <div class="rua1">
                <div class="rua2 text-center">
                    <p>
                        在这里插入图片
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="text-center">
            <h4>用户地域分布特点</h4>
            <hr/>
            <div class="rua1">
                <div class="rua2 text-center">
                    <p>
                        在这里插入图片
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="text-center">
            <h4>所在职位</h4>
            <hr/>
            <div class="rua1">
                <div class="rua2 text-center">
                    <p>
                        在这里插入图片
                    </p>
                </div>
            </div>
        </div>
    </div>
    <hr/>
    <div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <h2 class="page-header">观众态度分析</h2>
    </div>
    <div class="col-lg-6">
        <div class="text-center">
            <h4>词频统计</h4>
            <hr/>
            <div class="rua1">
                <div class="rua2 text-center">
                    <p>
                        在这里插入图片
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="text-center">
            <h4>评论词云</h4>
            <hr/>
            <div class="rua1">
                <div class="rua2 text-center">
                    <p>
                        在这里插入图片
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="text-center">
            <h4>词频统计</h4>
            <hr/>
            <div class="rua1">
                <div class="rua2 text-center">
                    <p>
                        在这里插入图片
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="text-center">
            <h4>出现明星及观众态度</h4>
            <hr/>
            <div class="rua1">
                <div class="rua2 text-center">
                    <p>
                        在这里插入图片
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="col-lg-12 center-block">
        <div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">用户信息参考</h2>
        </div>
        <div class="box1">
            <div class="box_a">
                <h4 class="text-right" style="color: #46b8da;font-weight: bold">观众群体分析</h4>
                <p>观众群主要来自学生和年轻职工，平均年龄在20岁左右，可针对年龄段要请嘉宾、安排节目等。</p>
            </div>
            <div class="box_c">
                <h4 class="text-right" style="color: #46b8da;font-weight: bold">应用点</h4>
                <p>结果数据，作为确定节目主题和嘉宾，安排节目环节和顺序时长等的支持点</p>
            </div>
        </div>
        <div class="box2">
            <div class="xian"></div>
            <div class="yuan1">
                <p>Part 1</p>
            </div>
            <div class="yuan2">
                <p>Part 2</p>
            </div>
            <div class="yuan3">
                <p>Part 3</p>
            </div>
        </div>
        <div class="box1">
            <div class="box_b">
                <h4 class="text-left" style="color: dodgerblue;font-weight: bold">观众评论分析</h4>
                <p>爬取用户评论信息，从评论中提取标签，根据标签分类及出现频率分析观众评论。</p>
            </div>
        </div>
    </div>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
<script src="../public/js/jquery.js"></script>
<script src="../public/js/bootstrap.js"></script>
</body>
</html>