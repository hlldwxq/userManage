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
    <link rel="icon" href="../../public/image/商标.png">
    <link rel="stylesheet" href="../../public/css/font.css" type="text/css">
    <link rel="stylesheet" href="../../public/css/title1.css" type="text/css">
    <link rel="stylesheet" href="../../public/css/bootstrap.css" type="text/css">
    <title>预告拍摄</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top:50px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">条目展示</h2>
    </div>
</div>
<div class="content">
        <div class="row">
            <div class="col-xs-8 col-sm-8 col-xs-offset-1" style="background-color: #cadfff">
                <div style="border-radius: 5px">
                    <ul class="nav nav-pills" style="background-color: #222831;border-radius: 5px">
                        <li class="active"><a href="./">返回</a></li>
                        <li><a href="edit/${plot.id}">编辑</a></li>
                        <li><a href="${plot.id-1}">上一条</a></li>
                        <li><a href="${plot.id+1}">下一条</a></li>
                        <li><a href="plot-type.html">展开本分类</a></li>
                    </ul>
                </div>

                <div class="row">
                    <div class="col-sm-8 blog-main">
                        <div class="blog-header">
                        <h1 class="blog-title">${plot.name}&nbsp;<small>${plot.type}·${plot.secondtype}</small></h1>
                        <p class="lead blog-description">${plot.author}</p>
                    </div>
                        <div class="blog-post">
                            <blockquote>
                                <p>
                                    ${plot.brief}
                                </p>
                            </blockquote>
                           <h3>相关作品</h3>
                            <h4>${plot.sourcename}</h4>
                              <p>${plot.sourceintroduction}</p>
                        </div>
                        <nav>
                            <ul class="pager">
                                <li>
                                    <a href="${plot.id-1}">上一条</a>
                                </li>
                                <li>
                                    <a href="${plot.id+1}">下一条</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-sm-3">
                        <div style="padding: 5%;width: 100%;"><img src="/images/${plot.picurl}" class="img-responsive"></div>
                        <div style="display: block;margin: 2px 10px">
                        <!--  <span>导演：</span><br>
                        <span>拍摄于：</span><br>
                        <span>简介：</span>--></div>
                    </div>
            </div>
</div>
            <div class="col-xs-2 col-sm-2 sidebar-offcanvas">
                <div class="row search-fixed">
                    <div class="row top-bar text-center">分类浏览</div>
                    <div class="panel-group" id="accordion" style="padding: 0 2px">
                        <div class="panel panel-default text-center " style="margin:0">
                            <div class="panel-heading" style = "background-color:#3f72af">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseOne" style="text-decoration:none;color:#eee">
                                        主题
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseZero" class="panel-collapse collapse">
                                <div class="panel-body" style = "padding:0" >
                                    <a href="#" class="list-group-item a-wrap">审查</a>
                                    <a href="#" class="list-group-item a-wrap">战斗</a>
                                    <a href="#" class="list-group-item a-wrap">死亡</a>
                                    <a href="#" class="list-group-item a-wrap">家庭</a>
                                    <a href="#" class="list-group-item a-wrap">命运与预言</a>
                                    <a href="#" class="list-group-item a-wrap">食物</a>
                                    <a href="#" class="list-group-item a-wrap">节日</a>
                                    <a href="#" class="list-group-item a-wrap">金钱</a>
                                    <a href="#" class="list-group-item a-wrap">道德</a>
                                    <a href="#" class="list-group-item a-wrap">政治</a>
                                    <a href="#" class="list-group-item a-wrap">宗教</a>
                                    <a href="#" class="list-group-item a-wrap">校园</a>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default text-center " style="margin:0">
                            <div class="panel-heading" style = "background-color:#3f72af">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseOne" style="text-decoration:none;color:#eee">
                                        类型
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse">
                                <div class="panel-body" style = "padding:0" >
                                    <a href="#" class="list-group-item a-wrap" >动作冒险</a>
                                    <a href="#" class="list-group-item a-wrap">喜剧</a>
                                    <a href="#" class="list-group-item a-wrap">商业</a>
                                    <a href="#" class="list-group-item a-wrap">犯罪与惩罚</a>
                                    <a href="#" class="list-group-item a-wrap">剧情</a>
                                    <a href="#" class="list-group-item a-wrap">恐怖</a>
                                    <a href="#" class="list-group-item a-wrap">爱情</a>
                                    <a href="#" class="list-group-item a-wrap">新闻</a>
                                    <a href="#" class="list-group-item a-wrap">职业摔跤</a>
                                    <a href="#" class="list-group-item a-wrap">推理</a>
                                    <a href="#" class="list-group-item a-wrap">运动故事</a>
                                    <a href="#" class="list-group-item a-wrap">战争</a>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default text-center " style="margin:0">
                            <div class="panel-heading" style = "background-color:#3f72af">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseTwo" style="text-decoration:none;color:#eee">
                                        媒体
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body" style = "padding:0" >
                                    <a href="#" class="list-group-item a-wrap" >所有媒体</a>
                                    <a href="#" class="list-group-item a-wrap">西方动画</a>
                                    <a href="#" class="list-group-item a-wrap">日本动画</a>
                                    <a href="#" class="list-group-item a-wrap">漫画书</a>
                                    <a href="#" class="list-group-item a-wrap">同人</a>
                                    <a href="#" class="list-group-item a-wrap">电影</a>
                                    <a href="#" class="list-group-item a-wrap">游戏</a>
                                    <a href="#" class="list-group-item a-wrap">文学</a>
                                    <a href="#" class="list-group-item a-wrap">音乐与音效</a>
                                    <a href="#" class="list-group-item a-wrap">新媒体</a>
                                    <a href="#" class="list-group-item a-wrap">平面媒体</a>
                                    <a href="#" class="list-group-item a-wrap">广播</a>
                                    <a href="#" class="list-group-item a-wrap">连环画</a>
                                    <a href="#" class="list-group-item a-wrap">桌游</a>
                                    <a href="#" class="list-group-item a-wrap">电子游戏</a>
                                    <a href="#" class="list-group-item a-wrap">网络漫画</a>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default text-center " style="margin:0">
                            <div class="panel-heading" style = "background-color:#3f72af">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseThree" style="text-decoration:none;color:#eee">
                                        叙事
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="panel-body" style = "padding:0" >
                                    <a href="#" class="list-group-item a-wrap" >通用的桥段</a>
                                    <a href="#" class="list-group-item a-wrap">实用的“魔法”</a>
                                    <a href="#" class="list-group-item a-wrap">塑造人物</a>
                                    <a href="#" class="list-group-item a-wrap">人物类型</a>
                                    <a href="#" class="list-group-item a-wrap">人物设置</a>
                                    <a href="#" class="list-group-item a-wrap">对白</a>
                                    <a href="#" class="list-group-item a-wrap">主题</a>
                                    <a href="#" class="list-group-item a-wrap">叙事手法</a>
                                    <a href="#" class="list-group-item a-wrap">副文本</a>
                                    <a href="#" class="list-group-item a-wrap">情节</a>
                                    <a href="#" class="list-group-item a-wrap">背景</a>
                                    <a href="#" class="list-group-item a-wrap">奇观</a>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default text-center " style="margin:0">
                            <div class="panel-heading" style = "background-color:#3f72af">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseFour" style="text-decoration:none;color:#eee">
                                        其他目录
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse">
                                <div class="panel-body" style = "padding:0" >
                                    <a href="#" class="list-group-item a-wrap" >电视节目</a>
                                    <a href="#" class="list-group-item a-wrap">贡献者</a>
                                    <a href="#" class="list-group-item a-wrap">创作手法</a>
                                    <a href="#" class="list-group-item a-wrap">创作者</a>
                                    <a href="#" class="list-group-item a-wrap">衍生作品</a>
                                    <a href="#" class="list-group-item a-wrap">语言</a>
                                    <a href="#" class="list-group-item a-wrap">创作规则</a>
                                    <a href="#" class="list-group-item a-wrap">商业运作</a>
                                    <a href="#" class="list-group-item a-wrap">人格分裂</a>
                                    <a href="#" class="list-group-item a-wrap">储藏室</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <style>
        .celebrity{
            display:block;
            position:relative;
            width:100%;
            margin: 0 auto;
            padding: 0;
            border: none;
        }
        .imgbox{
            width:100%;
            margin:10px;
            padding:0;
            border-style: none;
            border-radius: 5px;
            box-shadow: 5px;

        }
        .search-fixed{
            width:100%;
            height:500px;
            margin-left:5px;
            background-color:#cadfff;
            border-style: none;
            border-radius: 5px;
        }
        .top-bar{
            height:40px;
            width:100%;
            margin-left: 0;
            background-color:#222831;
            border-style: none;
            border-radius: 5px;
            color: #eee;
            line-height: 40px;
            font-size: 16px;

        }

        .list-item-add{
            margin-left:-4px;
            width:100%;
        }
        .pager > li > a {
            border-radius: 30px;
            padding: 10px 20px;
            text-align: center;
            width: 100px;
            color: #337ab7;
            margin: 0 20px;
            font-size: 15px;
        }
        span{
            font-family: 微软雅黑;
            font-size: 12px;
        }
    </style>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>