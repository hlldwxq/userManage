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
    <link rel="stylesheet" href="../public/css/title1.css" type="text/css">
    <link rel="stylesheet" href="../public/css/bootstrap.css" type="text/css">
    <title>预告拍摄</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top:50px;background-color: rgba(46, 109, 164, 0.90)">
    <div class="container">
        <h2 style="font-family: 微软雅黑">条目展示</h2>
    </div>
</div>
<div class="content">
    <div class="row">
        <div class="col-xs-offset-1 col-xs-8" style="background-color: #cadfff">
            <div style="border-radius: 5px">
                <ul class="nav nav-pills" style="background-color: #222831;border-radius: 5px">
                    <li class="active"><a href="plot-browse.html">返回</a></li>
                    <li><a href="plot-new.html">创建新条目</a></li>
                    <li><a href="#">上一分类</a></li>
                    <li><a href="#">下一分类</a></li>
                </ul>
            </div>

            <div class="row">
                <div class="col-sm-8">
                    <div class="blog-header">
                        <h1 class="blog-title">喜剧</h1>
                        <p class="lead blog-description">
                            喜剧是戏剧的一种类型，大众一般解作笑剧或笑片，以夸张的手法、巧妙的结构、诙谐的台词及对喜剧性格的刻画，从而引起人们对丑的、滑稽的嘲笑，对正常的人生和美好的理想予以肯定。
                            基于描写对象和手法的不同，可分为讽刺喜剧、抒情喜剧、荒诞喜剧和闹剧等样式。内容可为带有讽刺及政治机智或才智的社会批判，或为纯粹的闹剧或滑稽剧。喜剧冲突的解决一般比较轻快，往往以代表进步力量的主人公获得胜利或如愿以偿为结局。1895年6月10日，法国路易斯·卢米埃尔出品了世界上第一部喜剧片《水浇园丁》，从此开辟了喜剧片的先河。
                        </p>
                    </div>
                    <div class="list-group">
                        <a class="list-group-item active" href="#">
                            <h4 class="list-group-item-heading">误会</h4>
                            <p class="list-group-item-text">因为误会而产生喜剧效果</p>
                        </a>
                        <a class="list-group-item" href="#">
                            <h4 class="list-group-item-heading">尴尬</h4>
                            <p class="list-group-item-text">令人尴尬的场景会产生喜剧效果</p>
                        </a>
                        <a class="list-group-item active" href="#">
                            <h4 class="list-group-item-heading">条目一</h4>
                            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                        </a>
                        <a class="list-group-item" href="#">
                            <h4 class="list-group-item-heading">条目一</h4>
                            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                        </a>
                        <a class="list-group-item active" href="#">
                            <h4 class="list-group-item-heading">条目一</h4>
                            <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                        </a>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div style="padding: 5%;width: 100%;"><img src="image/血战钢锯岭.jpg" class="img-responsive"></div>
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
                                   href="#collapseZero" style="text-decoration:none;color:#eee">
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
    </style>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>
</body>
</html>