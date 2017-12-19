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
                    <h3>动画</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieTypePic0") %>">
                    <p>代表作品：《<%=request.getAttribute("movieTypeName0") %>》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>奇幻</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieTypePic1") %>">
                    <p>代表作品：《<%=request.getAttribute("movieTypeName1") %>》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>冒险</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieTypePic2") %>">
                    <p>代表作品：《<%=request.getAttribute("movieTypeName2") %>》</p>
                </div>
            </div>
            <div class="type" id="type2" style="display:none;">
                <div class="col-md-3 grid">
                    <h3>动作</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieTypePic3") %>">
                    <p>代表作品：《<%=request.getAttribute("movieTypeName3") %>》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>科幻</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieTypePic4") %>">
                    <p>代表作品：《<%=request.getAttribute("movieTypeName4") %>》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>犯罪</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieTypePic5") %>">
                    <p>代表作品：《<%=request.getAttribute("movieTypeName5") %>》</p>
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
                    <h3><%=request.getAttribute("actorsName0")%></h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("actorsPic0")%>">
                    <p>代表作品：<%=request.getAttribute("actorsRepresentativeMovie0")%></p>
                </div>
                <div class="col-md-3 grid">
                    <h3><%=request.getAttribute("actorsName1")%></h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("actorsPic1")%>">
                    <p>代表作品：<%=request.getAttribute("actorsRepresentativeMovie1")%></p>
                </div>
                <div class="col-md-3 grid">
                    <h3><%=request.getAttribute("actorsName2")%></h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("actorsPic2")%>">
                    <p>代表作品：<%=request.getAttribute("actorsRepresentativeMovie2")%></p>
                </div>
            </div>
            <div class="creator" id="creator2" style="display: none;">
                <div class="col-md-3 grid">
                    <h3><%=request.getAttribute("actorsName3")%></h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("actorsPic3")%>">
                    <p>代表作品：<%=request.getAttribute("actorsRepresentativeMovie3")%></p>
                </div>
                <div class="col-md-3 grid">
                    <h3><%=request.getAttribute("actorsName4")%></h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("actorsPic4")%>">
                    <p>代表作品：<%=request.getAttribute("actorsRepresentativeMovie4")%></p>
                </div>
                <div class="col-md-3 grid">
                    <h3><%=request.getAttribute("actorsName5")%></h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("actorsPic5")%>">
                    <p>代表作品：<%=request.getAttribute("actorsRepresentativeMovie5")%></p>
                </div>
            </div>
            <div class="col-md-2 grid">
                <a type="button" id="button2" onclick="javascript:divrefresh('creator');" style="cursor: pointer">>>换一批</a>
            </div>
        </div>
    </div>
    <div class="row featurette">
        <h1 class="page-header">
            票房：
        </h1>
        <div class="row featurette">
            <div class="col-md-1">

            </div>
            <div class="ticket" id="tickect1" style="display:block;">
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieBoxOfficeName0")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieBoxOfficePic0")%>">
                    <p>票房：<%=request.getAttribute("movieNumOfBoxOffice0")%>万元</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieBoxOfficeName1")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieBoxOfficePic1")%>">
                    <p>票房：<%=request.getAttribute("movieNumOfBoxOffice1")%>万元</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieBoxOfficeName2")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieBoxOfficePic2")%>">
                    <p>票房：<%=request.getAttribute("movieNumOfBoxOffice2")%>万元</p>
                </div>
            </div>
            <div class="ticket" id="tickect2" style="display:none;">
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieBoxOfficeName3")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieBoxOfficePic3")%>">
                    <p>票房：<%=request.getAttribute("movieNumOfBoxOffice3")%>万元</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieBoxOfficeName4")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieBoxOfficePic4")%>">
                    <p>票房：<%=request.getAttribute("movieNumOfBoxOffice4")%>万元</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieBoxOfficeName5")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieBoxOfficePic5")%>">
                    <p>票房：<%=request.getAttribute("movieNumOfBoxOffice5")%>万元</p>
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
                    <h3>《<%=request.getAttribute("movieScoreName0")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieScorePic0")%>">
                    <p>评分：<%=request.getAttribute("movieNumOfScore0")%></p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieScoreName1")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieScorePic1")%>">
                    <p>评分：<%=request.getAttribute("movieNumOfScore1")%></p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieScoreName2")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieScorePic2")%>">
                    <p>评分：<%=request.getAttribute("movieNumOfScore2")%></p>
                </div>
            </div>
            <div class="score" id="score2" style="display:none;">
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieScoreName3")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieScorePic3")%>">
                    <p>评分：<%=request.getAttribute("movieNumOfScore3")%></p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieScoreName4")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieScorePic4")%>">
                    <p>评分：<%=request.getAttribute("movieNumOfScore4")%></p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《<%=request.getAttribute("movieScoreName5")%>》</h3>
                    <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=request.getAttribute("movieScorePic5")%>">
                    <p>评分：<%=request.getAttribute("movieNumOfScore5")%></p>
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