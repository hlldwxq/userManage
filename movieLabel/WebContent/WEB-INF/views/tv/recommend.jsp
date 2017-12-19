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
    <link rel="icon" href="../public/${pageContext.request.contextPath}/${pageContext.request.contextPath}/image/商标.png">
    <link rel="stylesheet" href="../public/css/font.css" type="text/css">
    <link rel="stylesheet" href="../public/css/title.css" type="text/css">
    <link rel="stylesheet" href="../public/css/bootstrap.css" type="text/css">
    <title>推荐</title>
    <link href="../public/css/carousel.css" rel="stylesheet">
    <script src="../public/js/echarts.js"></script>
</head>
<!-- NAVBAR
================================================== -->
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">预告拍摄分析报告</h2>
        <p>您可能感兴趣：</p>
    </div>
</div>
<div class="container movieinfo" style="display: block;margin-top: 60px">
    <div class="row featurette" >
        <h1 class="page-header">
            类型：
        </h1>
        <div class="row featurette">
            <div class="col-md-1">

            </div>
            <div class="type" id="type1" style="display:block;">
                <div class="col-md-3 grid">
                    <h3>都市</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《金刚狼：殊死一战》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>古装</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《美女与野兽》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>偶像</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《金刚：骷髅岛》</p>
                </div>
            </div>
            <div class="type" id="type2" style="display:none;">
                <div class="col-md-3 grid">
                    <h3>动作</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《刺客聂隐娘》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>科幻</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《安德的游戏》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>战争</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《血战钢锯岭》</p>
                </div>
            </div>
            <div class="col-md-2 grid">
                <a type="button" id="button1" onclick="javascript:divrefresh('type');" style="cursor: pointer">>>换一批</a>
            </div>
        </div>
    </div>

    <div class="row featurette">
        <h1 class="page-header">
            主演：
        </h1>
        <div class="row featurette">
            <div class="col-md-1">

            </div>
            <div class="creator" id="creator1" style="display: block;">
                <div class="col-md-3 grid">
                    <h3>舒淇</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《刺客聂隐娘》《非诚勿扰》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>冯远征</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《不要和陌生人说话》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>周杰伦</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>代表作品：《不能说的秘密》</p>
                </div>
            </div>
            <div class="creator" id="creator2" style="display: none;">
                <div class="col-md-3 grid">
                    <h3>张震</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/张震.jpg">
                    <p>代表作品：《刺客聂隐娘》《绣春刀》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>袁泉</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/袁泉.jpg">
                    <p>代表作品：《春天狂想曲》、《蓝色爱情》、《上海纪事》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>周杰伦</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/周杰伦.jpg">
                    <p>代表作品：《不能说的秘密》</p>
                </div>
            </div>
            <div class="col-md-2 grid">
                <a type="button" id="button2" onclick="javascript:divrefresh('creator');" style="cursor: pointer">>>换一批</a>
            </div>
        </div>
    </div>
    <div class="row featurette">
        <h1 class="page-header">
            收视率：
        </h1>
        <div class="row featurette">
            <div class="col-md-1">

            </div>
            <div class="ticket" id="tickect1" style="display:block;">
                <div class="col-md-3 grid">
                    <h3>《金刚狼：殊死一战》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>收视率：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《美女与野兽》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>收视率：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《金刚：骷髅岛》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>收视率：</p>
                </div>
            </div>
            <div class="ticket" id="tickect2" style="display:none;">
                <div class="col-md-3 grid">
                    <h3>《刺客聂隐娘》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>收视率：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《安德的游戏》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>收视率：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《血战钢锯岭》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>收视率：</p>
                </div>
            </div>
            <div class="col-md-2 grid">
                <a type="button" id="button3" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
            </div>
        </div>
    </div>
    <div class="row featurette">
        <h1 class="page-header">
            口碑：
        </h1>
        <div class="row featurette">
            <div class="col-md-1">

            </div>
            <div class="score" id="score1" style="display:block;">
                <div class="col-md-3 grid">
                    <h3>《金刚狼：殊死一战》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>评分：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《美女与野兽》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>评分：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《金刚：骷髅岛》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>评分：</p>
                </div>
            </div>
            <div class="score" id="score2" style="display:none;">
                <div class="col-md-3 grid">
                    <h3>《刺客聂隐娘》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>评分：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《安德的游戏》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>评分：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《血战钢锯岭》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/tvsample.jpg">
                    <p>评分：</p>
                </div>
            </div>
            <div class="col-md-2 grid">
                <a type="button" id="button4" onclick="javascript:divrefresh('score');" style="cursor: pointer">>>换一批</a>
            </div>
        </div>
    </div>
</div>
<script src="../public/js/jquery.js"></script>
<script>window.jQuery || document.write('<script src="../public/js/jquery.js"><\/script>')</script>
<script src="../public/js/bootstrap.js"></script>
<script src="../public/js/changedisplay.js"></script>
<script type="text/javascript">
    function divrefresh(change_c) {
        var divs = document.getElementsByTagName('div'),
                mydivs=[];
        var i, nextOne;
        for (i = 0; i < divs.length; i++) {
            if (divs[i].id && divs[i].id.indexOf(change_c) != -1) {
                mydivs.push(divs[i]);
            }
        }
        for (i = 0; i < mydivs.length; i++) {
            if (mydivs[i].style.display === 'block') {
                mydivs[i].style.display = 'none';
                nextOne = (i === mydivs.length - 1) ? 0 : i + 1;
                mydivs[nextOne].style.display = 'block';
                break;
            }
        }
    }
</script>
<link href="../public/css/carousel.css" rel="stylesheet">
<script src="../public/js/echarts.js"></script>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>