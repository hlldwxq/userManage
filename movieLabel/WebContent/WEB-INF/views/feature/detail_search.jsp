 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head lang="zh-CN">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1"><meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../public/image/商标.png">
    <link rel="stylesheet" href="../public/css/font.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../public/css/bootstrap.css">
    <link rel="stylesheet" href="../public/css/title.css" type="text/css">
    <script type="text/javascript" src="../public/js/jquery.js"></script>
    <script type="text/javascript" src="../public/js/bootstrap.js"></script>
    <title>推荐</title>
</head>
<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../background/index.html" style="font-size: 20px;font-family: 微软雅黑">智能标签</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#">新闻</a>
                    <ul>
                        <li><a href="../news/news_arrange.html">新闻集合编排</a></li>
                        <li><a href="../news/news_analysis.html">节目播出形式分析指导</a></li>
                        <li><a href="../news/news_feature.html">花絮精彩片段生成</a></li>
                        <li><a href="../news/news_hotTopicSelect.html">新闻素材筛选</a></li>
                        <li><a href="../news/news_usercondition.html">用户舆情分析</a></li>
                    </ul>
                </li>
                <li><a href="../movie/movie.html">电影</a>
                    <ul>
                        <li><a href="../movie/recommend.html">推荐系统</a></li>
                        <li><a href="../movie/screen.html">剧本筛选</a></li>
                        <li><a href="../movie/investment.html">投资决策</a></li>
                        <li><a href="../movie/creator.html">主创推荐</a></li>
                        <li><a href="../movie/theme.html">题材推荐</a></li>
                        <li><a href="../movie/trailer.html">预告拍摄</a></li>
                    </ul>
                </li>
                <li><a href="../entertainment/variety.html">娱乐</a>
                    <ul>
                        <li><a href="../entertainment/guest_theme_recommend.html">嘉宾与主题推荐</a></li>
                        <li><a href="../entertainment/program_schedule_arrangement.html">节目档期安排</a></li>
                        <li><a href="../entertainment/content_arrangement.html">节目内容安排</a></li>
                        <li><a href="../entertainment/user_data.html">用户信息参考</a></li>
                        <li><a href="../entertainment/advertiser_recommend.html">广告商选择</a></li>
                    </ul>
                </li>
                <li><a href="../tv/tv.html">电视剧</a>
                    <ul>
                        <li><a href="../tv/recommend.html">推荐系统</a></li>
                        <li><a href="../tv/screen.html">剧本筛选</a></li>
                        <li><a href="../tv/investment.html">投资决策</a></li>
                        <li><a href="../tv/creator.html">主创推荐</a></li>
                        <li><a href="../tv/theme.html">题材推荐</a></li>
                        <li><a href="../tv/trailer.html">预告拍摄</a></li>
                    </ul>
                </li>
                <li><a href="feature.html">专题片</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">注册</a>
                </li>
                <li>
                    <a href="#">登录</a>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input class="form-control" placeholder="搜您想要的..." type="text">
                </div>
                <button class="btn btn-success" type="submit">搜索</button>
            </form>
        </div>
    </div>
</nav>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">精细搜索</h2>
        <p></p>
    </div>
</div>
<!--按照发行时间、类型、国家、导演、解说、评分、热度进行精细搜索。 -->
<div class="container" style="margin-top: 20px;margin-bottom: 150px;">
    <div class="row">
        <form action="" style="margin-left:10%;width:80%;margin-top:20px;" id="form1">
            <div class="row col-sm-offset-2">
                <div class="col-sm-2" style="text-align: right">
                    <label style="font-size: 20px;font-family: 微软雅黑;">发行时间</label>
                </div>
                <div class="col-sm-1" style="font-size: 0;">.</div>
                <div class="col-sm-3">
                    <select name="years" id="from_years"></select>
                    <label >年</label>
                    <select name="months" id="from_months"></select>
                </div>
                <div class="col-sm-1">
                    <label>至</label>
                </div>
                <div class="col-sm-3">
                    <select name="years" id="to_years"></select>
                    <label >年</label>
                    <select name="months" id="to_months"></select>
                </div>
            </div>
            <div class="row" style="color: transparent;height: 10px;">a</div>
            <div class="row col-sm-offset-2">
                <div class="col-sm-2" style="text-align: right">
                    <label style="font-size: 20px;font-family: 微软雅黑;">类型</label>
                </div>
                <div class="col-sm-1" style="font-size: 0;">.</div>
                <div class="col-sm-6">
                    <select name="theme" id="theme">
                        <option value="1">全部</option>
                        <option value="2">人物</option>
                        <option value="3">文献</option>
                        <option value="4">教学</option>
                        <option value="5">广告</option>
                        <option value="6">新闻</option>
                    </select>
                </div>
            </div>
            <div class="row" style="color: transparent;height: 10px;">a</div>
            <div class="row col-sm-offset-2">
                <div class="col-sm-2" style="text-align: right">
                    <label style="font-size: 20px;font-family: 微软雅黑;">评分</label>
                </div>
                <div class="col-sm-1" style="font-size: 0;">.</div>
                <div class="col-sm-3">
                    <select name="grades" id="grades_1"></select>
                    <label >分</label>
                </div>
                <div class="col-sm-1">
                    <label>至</label>
                </div>
                <div class="col-sm-3">
                    <select name="grades" id="grades_2"></select>
                        <label >分</label>
                </div>
            </div>
            <div class="row" style="color: transparent;height: 10px;">a</div>
            <div class="row col-sm-offset-2">
                <div class="col-sm-2" style="text-align: right">
                    <label style="font-size: 20px;font-family: 微软雅黑;">热度</label>
                </div>
                <div class="col-sm-1" style="font-size: 0;">.</div>
                <div class="col-sm-3">
                    <select name="grades" id="grades_3"></select>
                    <label >分</label>
                </div>
                <div class="col-sm-1">
                    <label>至</label>
                </div>
                <div class="col-sm-3">
                    <select name="grades" id="grades_4"></select>
                    <label >分</label>
                </div>
            </div>
            <div class="row" style="color: transparent;height: 10px;">a</div>
            <div class="row col-sm-offset-2">
                <div class="col-sm-2" style="text-align: right">
                    <label for="m_movdirector" style="font-size: 20px;font-family: 微软雅黑;">导演</label>
                </div>
                <div class="col-sm-1" style="font-size: 0;">.</div>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="m_movdirector" placeholder="请输入导演姓名">
                </div>
            </div>
            <div class="row" style="color: transparent;height: 10px;">.</div>
            <div class="row col-sm-offset-2">
                <div class="col-sm-2" style="text-align: right">
                    <label for="m_movmaker" style="font-size: 20px;font-family: 微软雅黑;">解说</label>
                </div>
                <div class="col-sm-1" style="font-size: 0;">.</div>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="m_movmaker" placeholder="请输入解说姓名">
                </div>
            </div>
            <div class="row" style="color: transparent;height: 10px;">a</div>
            <div class="form-group row">
                <div class="col-sm-offset-6 col-sm-6">
                    <button type="submit" class="btn"><a href="">搜索</a></button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    var years=document.getElementById("from_years");
    for(var i=2017;i>1900;i--) {
        years.add(new Option(i,i));
    }
    var months=document.getElementById("from_months");
    for(var i=1;i<13;i++) {
        months.add(new Option(i,i));
    }
    var labelone=document.createElement("label");
    labelone.innerText="月  ";
    insertAfter(labelone,months);

    function insertAfter(newElement, targetElement){
        var parent = targetElement.parentNode;
        if (parent.lastChild == targetElement) {

            parent.appendChild(newElement);
        } else {
            parent.insertBefore(newElement, targetElement.nextSibling);

        }
    }
</script>
<script>
    var years=document.getElementById("to_years");
    for(var i=2017;i>1900;i--) {
        years.add(new Option(i,i));
    }
    var months=document.getElementById("to_months");
    for(var i=1;i<13;i++) {
        months.add(new Option(i,i));
    }
    var labelone=document.createElement("label");
    labelone.innerText="月  ";
    insertAfter(labelone,months);

    function insertAfter(newElement, targetElement){
        var parent = targetElement.parentNode;
        if (parent.lastChild == targetElement) {

            parent.appendChild(newElement);
        } else {
            parent.insertBefore(newElement, targetElement.nextSibling);

        }
    }
</script>
<script>
    var grades=document.getElementById("grades_1");
    for(var i=10.0;i>0.0;i--) {
        grades.add(new Option(i,i));
    }
    var grades=document.getElementById("grades_2");
    for(var j=10.0;j>i;j--) {
        grades.add(new Option(j,j));
    }
    function insertAfter(newElement, targetElement){
        var parent = targetElement.parentNode;
        if (parent.lastChild == targetElement) {

            parent.appendChild(newElement);
        } else {
            parent.insertBefore(newElement, targetElement.nextSibling);

        }
    }
</script>
<script>
    var grades=document.getElementById("grades_3");
    for(var i=10.0;i>0.0;i--) {
        grades.add(new Option(i,i));
    }
    var grades=document.getElementById("grades_4");
    for(var j=10.0;j>i;j--) {
        grades.add(new Option(j,j));
    }
    function insertAfter(newElement, targetElement){
        var parent = targetElement.parentNode;
        if (parent.lastChild == targetElement) {

            parent.appendChild(newElement);
        } else {
            parent.insertBefore(newElement, targetElement.nextSibling);

        }
    }
</script>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>