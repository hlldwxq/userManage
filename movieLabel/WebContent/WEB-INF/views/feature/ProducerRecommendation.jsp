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
        <title>出品推荐</title>
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
<div class="content">
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">出品推荐</h2>
        <p>海量数据库，帮您找到最适合您的的专题片出品团队</p>
    </div>
</div>
    <form class="form-horizontal" role="form"  action="#" id="m_movinvest_form" name="form_1" method="#" autocomplete="off">
<div class="container">
    <div class="form-group">
        <label class="control-label col-lg-2 col-lg-offset-3" for="type">拍摄类型</label>
        <div class="col-lg-4">
            <select class="form-control" id="type">
                <option value="" disabled selected style="display:none;">请选择拍摄类型</option>
                <option>新闻性专题片</option>
                <option>纪实性专题片</option>
                <option>科普性专题片</option>
                <option>广告性专题片</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-lg-2 col-lg-offset-3" for="team">团队类型</label>
        <div class="col-lg-4">
            <select class="form-control" id="team">
                <option value="" disabled selected style="display:none;">请选择团队类型</option>
                <option>导演</option>
                <option>策划</option>
                <option>制片</option>
                <option>编导</option>
                <option>摄像</option>
                <option>视频处理</option>
                <option>音频处理</option>
                <option>艺术</option>
                <option>音乐制作</option>
                <option>解说</option>
                <option>字幕翻译</option>
                <option>资料统筹</option>
                <option>特效动画</option>
                <option>灯光</option>
                <option>出品团队</option>
                <option>技术组</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-lg-2 col-lg-offset-3" for="youxianji">推荐优先级</label>
        <div class="col-lg-4">
            <select class="form-control" id="youxianji">
                <option value="" disabled selected style="display:none;">请选择推荐优先级</option>
                <option>按评分推荐</option>
                <option>按热度推荐</option>
                <option>按获奖信息推荐</option>
            </select>
        </div>
    </div>
    <div class="row col-lg-offset-6">
        <br>
        <button type="submit" class="btn">提交生成分析报告</button>
    </div>
    </div>
        </form>
</div>
</div>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>