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
                    <h3>自然</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/冰冻星球.jpg">
                    <p>代表作品：《冰冻星球》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>文化</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/我在故宫修文物.jpg">
                    <p>代表作品：《我在故宫修文物》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>人文</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/真相访谈.jpg">
                    <p>代表作品：《真相访谈》</p>
                </div>
            </div>
            <div class="type" id="type2" style="display:none;">
                <div class="col-md-3 grid">
                    <h3>医疗</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/人间世.jpg">
                    <p>代表作品：《人间世》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>科技</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/超级工程2.jpg">
                    <p>代表作品：《超级工程2》</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>人物</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/第四公民.jpg">
                    <p>代表作品：《第四公民》</p>
                </div>
            </div>
            <div class="col-md-2 grid">
                <a type="button" id="button1" onclick="javascript:divrefresh('type');" style="cursor: pointer">>>换一批</a>
            </div>
        </div>
    </div>

    <div class="row featurette">
        <h1 class="page-header">
            评分：
        </h1>
        <div class="row featurette">
            <div class="col-md-1">

            </div>
            <div class="creator" id="creator1" style="display: block;">
                <div class="col-md-3 grid">
                    <h3>维基解密的抗争</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/维基解密的抗争.jpg">
                    <p>评分：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>超级工程2</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/超级工程2.jpg">
                    <p>评分：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>黑鲸</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/黑鲸.jpg">
                    <p>评分：</p>
                </div>
            </div>
            <div class="creator" id="creator2" style="display: none;">
                <div class="col-md-3 grid">
                    <h3>人间世</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/人间世.jpg">
                    <p>评分：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>冰冻星球</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/冰冻星球.jpg">
                    <p>评分：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>第四公民</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/第四公民.jpg">
                    <p>评分：</p>
                </div>
            </div>
            <div class="col-md-2 grid">
                <a type="button" id="button2" onclick="javascript:divrefresh('creator');" style="cursor: pointer">>>换一批</a>
            </div>
        </div>
    </div>
    <div class="row featurette">
        <h1 class="page-header">
            获奖：
        </h1>
        <div class="row featurette">
            <div class="col-md-1">

            </div>
            <div class="ticket" id="tickect1" style="display:block;">
                <div class="col-md-3 grid">
                    <h3>《冰冻星球》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/冰冻星球.jpg">
                    <p>获奖：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《黑鲸》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/黑鲸.jpg">
                    <p>获奖：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《海豚湾》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/海豚湾.jpg">
                    <p>获奖：</p>
                </div>
            </div>
            <div class="ticket" id="tickect2"  style="display:none;">
                <div class="col-md-3 grid">
                    <h3>《真相访谈》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/真相访谈.jpg">
                    <p>获奖：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《远方的家》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/远方的家.jpg">
                    <p>获奖：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《地球脉动》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/地球脉动.jpg">
                    <p>获奖：</p>
                </div>
            </div>
            <div class="col-md-2 grid">
                <a type="button" id="button3" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
            </div>
        </div>
    </div>
    <div class="row featurette">
        <h1 class="page-header">
            热度：
        </h1>
        <div class="row featurette">
            <div class="col-md-1">

            </div>
            <div class="score" id="score1" style="display:block;">
                <div class="col-md-3 grid">
                    <h3>《人间世》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/人间世.jpg">
                    <p>热度：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《我在故宫修文物》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/我在故宫修文物.jpg">
                    <p>热度：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《南太平洋》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/南太平洋.jpg">
                    <p>热度：</p>
                </div>
            </div>
            <div class="score" id="score2" style="display:none;">
                <div class="col-md-3 grid">
                    <h3>《维基解密的抗争》</h3>
                    <img class="img-responsive" style="width: 100%" src="image/维基解密的抗争.jpg">
                    <p>热度：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《黑鲸》</h3>
                    <img class="img-responsive"  style="width: 100%" src="image/黑鲸.jpg">
                    <p>热度：</p>
                </div>
                <div class="col-md-3 grid">
                    <h3>《南太平洋》</h3>
                    <img class="img-responsive" style="width: 100%"  src="image/南太平洋.jpg">
                    <p>热度：</p>
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