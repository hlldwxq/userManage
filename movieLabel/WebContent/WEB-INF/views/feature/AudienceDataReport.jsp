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
        <script type="text/javascript" src="../public/js/echarts.js"></script>
        <title>观众数据报告</title>
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
                        <li><a href="../movie/recommend.html">电影推荐系统</a></li>
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
                        <li><a href="../tv/recommend.html">电影推荐系统</a></li>
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
        <h2 style="font-family: 微软雅黑">热点聚焦</h2>
        <p>已为您生成报告....</p>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-6">
            <h2 class="page-header">网站评分</h2>
            <div id="chart1" style="width:100%;height:300px;">
                <script type="text/javascript">
                    var myChart = echarts.init(document.getElementById('chart1'));

                    var option = {
                        title: {
                            text: '各网站评分'
                        },
                        tooltip: {},
                        legend: {
                            data:['评分']
                        },
                        xAxis: {
                            data: ["豆瓣","Rotten Tomatoes","IMDB","时光网"]
                        },
                        yAxis: {},
                        series: [{
                            name: '评分',
                            type: 'bar',
                            data: [7.5,6.9,7.4,8.3]
                        }]
                    };
                    myChart.setOption(option);
                </script>
            </div>
        </div>
        <div class="col-lg-6">
            <h2 class="page-header">社交网站评论量</h2>
            <div id="chart2" style="width:100%;height:300px">
                    <script type="text/javascript">
                        var myChart2 = echarts.init(document.getElementById('chart2'));
                        var option2 = {
                            title: {
                                text: '各社交网站评论量'
                            },
                            tooltip: {},
                            legend: {
                                data:['评论量']
                            },
                            xAxis: {
                                data: ["百度贴吧","新浪微博","天涯论坛","豆瓣","院线网站"]
                            },
                            yAxis: {},
                            series: [{
                                name: '评论量',
                                type: 'bar',
                                data: [3000000,2000000,3400000,1400000,500000]
                            }]
                        };
                        myChart2.setOption(option2);
                    </script>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-2">.</div>
        <div class="col-lg-4">
            <h2 class="page-header">相关新闻</h2>
            <a href="#" class="">balahbalahbalahbalahbalahbalahbalahbalah</a>
            <a href="#">balahbalahbalahbalahbalahbalahbalahbalah</a>
            <a href="#">balahbalahbalahbalahbalahbalahbalahbalah</a>
            <br>
            <div style="display: block;" class="row">
                <div class="col-lg-10" style="text-align: right">
                    <a type="button" id="button3" onclick="javascript:divrefresh('tickect');" style="cursor: pointer;text-align: right">>>换一批</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <h2 class="page-header">视频网站播放量</h2>
            <div id="chart3" style="width:100%;height:300px;">
                <script type="text/javascript">
                    var myChart3 = echarts.init(document.getElementById('chart3'));
                var option3 = {
                title: {
                text: '各视频网站播放量'
                },
                tooltip: {},
                legend: {
                data:['点击率']
                },
                xAxis: {
                data: ["优酷","土豆","爱奇艺","乐视","百度视频","乐视视频","腾讯视频"]
                },
                yAxis: {},
                series: [{
                name: '点击率',
                type: 'bar',
                data: [3000000,2000000,3400000,1400000,500000,2600000,1000000]
                }]
                };
                    myChart3.setOption(option3);
                </script>
            </div>
        </div>
    </div>
    <div class="row col-md-offset-6">
        <br>
        <button type="submit" class="btn" id="outputpdf">保存</button>
    </div>
</div>
<script type="text/javascript" src="../public/js/jspdf.debug.js"></script>
<script type="text/javascript" src="../public/js/html2canvas.js"></script>
<script type="text/javascript" src="../public/js/output-pdf.js"></script>
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
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>