<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="icon"
	href="${pageContext.request.contextPath}/public/image/smalllogo.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/public/css/title1.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/public/css/bootstrap.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/public/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/public/js/masonry.pkgd.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/public/js/imagesloaded.pkgd.min.js"></script>

<title>预告拍摄</title>
</head>
<body>
	<%@include file="../frame/header.jsp"%>
	<div class="jumbotron" style="margin-top: 50px">
		<div class="container">
			<h2 style="font-family: 微软雅黑">桥段浏览</h2>
			<p>多种类型桥段，给您提供源源不断的创作灵感</p>
		</div>
	</div>
	<div class="content">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-1">
				<div style="border-radius: 5px;" id="movies">
					<ul class="nav nav-pills"
						style="background-color: #255782; border-radius: 5px; width: 100%">
						<li class="active"><a href="#">创建新条目</a></li>
						<li><a href="#tropes">桥段浏览</a></li>
						<li><a href="#movies">更多电影</a></li>
						<li class="pull-right"><a href="#">搜索电影</a></li>
						<li class="pull-right"><input style="margin: 8px 2px 0 0;"></li>
					</ul>
				</div>
				<div class="row" style="margin: 5px">
					<div id="myCarousel" class="carousel slide">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<!-- 轮播（Carousel）项目 -->
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">初恋这件小事</h4>
										<p>
											<strong>导演：</strong> <a href="#"> 普特鹏</a></br> <strong>编剧:</strong>
											<a href="#">普特鹏</a></br> <strong>主演:</strong> <a href="#">马里奥</a>
											/ <a href="#"> 平采娜</a> </br> <strong>类型:</strong> <a href="#">喜剧</a>
											/ <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">泰坦尼克号</h4>
										<p>
											<strong>导演：</strong> <a href="#">詹姆斯·卡梅隆</a></br> <strong>编剧:</strong>
											<a href="#">詹姆斯·卡梅隆</a> </br> <strong>主演:</strong> <a href="#">
												莱昂纳多·迪卡普里奥</a> / <a href="#">凯特·温丝莱特</a> </br> <strong>类型:</strong> <a
												href="#">剧情</a> / <a href="#">爱情</a>/ <a href="#">灾难</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"> <img src=""
											class="img-responsive"></a>
										<h4 class="text-center">怦然心动</h4>
										<p>
											<strong>导演：</strong> <a href="#">罗伯·莱纳</a></br> <strong>编剧:</strong>
											<a href="#">罗伯·莱纳</a> </br> <strong>主演:</strong> <a href="#">玛德琳·卡罗尔</a>
											/ <a href="#"> 卡兰·麦克奥利菲</a> </br> <strong>类型:</strong> <a href="#">喜剧</a>
											/ <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
								<div class="col-xs-3">
									<div class="imgbox">
										<a href="plot-show.html"><img src=""
											class="img-responsive"></a>
										<h4 class="text-center">北京遇上西雅图</h4>
										<p>
											<strong>导演：</strong> <a href="#">薛晓路</a></br> <strong>编剧:</strong>
											<a href="#">薛晓路</a> / <a href="#">焦华静</a></br> <strong>主演:</strong>
											<a href="#">汤唯</a> / <a href="#">吴秀波</a> </br> <strong>类型:</strong>
											<a href="#">喜剧</a> / <a href="#">爱情</a>
										</p>
										<button class="btn btn-block btn-success">点击查看更多</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 轮播（Carousel）导航 -->
						<a class="carousel-control left" href="#myCarousel"
							data-slide="prev" style="width: 5%">&lsaquo;</a> <a
							class="carousel-control right" href="#myCarousel"
							data-slide="next" style="width: 5%">&rsaquo;</a>
					</div>
				</div>
				<div class="row" style="margin: 5px" id="tropes">
					<ul class="nav nav-pills"
						style="background-color: #255782; border-radius: 5px; width: 100%">
						<li class="active"><a href="${pageContext.request.contextPath}/movie/plot/add">创建新条目</a></li>
						<li><a href="#movies">电影浏览</a></li>
						<li><a href="#tropes">更多桥段</a></li>
						<li class="pull-right"><a href="#">搜索桥段</a></li>
						<li class="pull-right"><input style="margin: 8px 2px 0 0;"></li>
					</ul>
					<div id="plotWrapper" class="plot-container">
						<c:forEach var="item" items="${list}">
							<div class="plot-box">
								<a
									href="${pageContext.request.contextPath}/movie/plot/${item.id}"><img
									src="/images/${item.picurl}" class="img-responsive"></a>
								<h4>${item.name}</h4>
								<p>${item.type}</p>
								<a
									href="${pageContext.request.contextPath}/movie/plot/${item.id}">点击查看更多</a>
							</div>
						</c:forEach>

					</div>
				</div>
			</div>

			<div class="col-xs-2 col-sm-2 sidebar-offcanvas">
				<div class="row search-fixed">
					<div class="row top-bar text-center">分类浏览</div>
					<div class="panel-group" id="accordion" style="padding: 0 2px">
						<div class="panel panel-default text-center " style="margin: 0">
							<div class="panel-heading" style="background-color: #3f72af">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne" style="text-decoration: none; color: #eee">
										主题 </a>
								</h4>
							</div>
							<div id="collapseZero" class="panel-collapse collapse in">
								<div class="panel-body" style="padding: 0">
									<a href="#" class="list-group-item a-wrap">审查</a> <a href="#"
										class="list-group-item a-wrap">战斗</a> <a href="#"
										class="list-group-item a-wrap">死亡</a> <a href="#"
										class="list-group-item a-wrap">家庭</a> <a href="#"
										class="list-group-item a-wrap">命运与预言</a> <a href="#"
										class="list-group-item a-wrap">食物</a> <a href="#"
										class="list-group-item a-wrap">节日</a> <a href="#"
										class="list-group-item a-wrap">金钱</a> <a href="#"
										class="list-group-item a-wrap">道德</a> <a href="#"
										class="list-group-item a-wrap">政治</a> <a href="#"
										class="list-group-item a-wrap">宗教</a> <a href="#"
										class="list-group-item a-wrap">校园</a>
								</div>
							</div>
						</div>

						<div class="panel panel-default text-center " style="margin: 0">
							<div class="panel-heading" style="background-color: #3f72af">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne" style="text-decoration: none; color: #eee">
										类型 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse">
								<div class="panel-body" style="padding: 0">
									<a href="#" class="list-group-item a-wrap">动作冒险</a> <a
										href="#" class="list-group-item a-wrap">喜剧</a> <a href="#"
										class="list-group-item a-wrap">商业</a> <a href="#"
										class="list-group-item a-wrap">犯罪与惩罚</a> <a href="#"
										class="list-group-item a-wrap">剧情</a> <a href="#"
										class="list-group-item a-wrap">恐怖</a> <a href="#"
										class="list-group-item a-wrap">爱情</a> <a href="#"
										class="list-group-item a-wrap">新闻</a> <a href="#"
										class="list-group-item a-wrap">职业摔跤</a> <a href="#"
										class="list-group-item a-wrap">推理</a> <a href="#"
										class="list-group-item a-wrap">运动故事</a> <a href="#"
										class="list-group-item a-wrap">战争</a>
								</div>
							</div>
						</div>

						<div class="panel panel-default text-center " style="margin: 0">
							<div class="panel-heading" style="background-color: #3f72af">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo" style="text-decoration: none; color: #eee">
										媒体 </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body" style="padding: 0">
									<a href="#" class="list-group-item a-wrap">所有媒体</a> <a
										href="#" class="list-group-item a-wrap">西方动画</a> <a href="#"
										class="list-group-item a-wrap">日本动画</a> <a href="#"
										class="list-group-item a-wrap">漫画书</a> <a href="#"
										class="list-group-item a-wrap">同人</a> <a href="#"
										class="list-group-item a-wrap">电影</a> <a href="#"
										class="list-group-item a-wrap">游戏</a> <a href="#"
										class="list-group-item a-wrap">文学</a> <a href="#"
										class="list-group-item a-wrap">音乐与音效</a> <a href="#"
										class="list-group-item a-wrap">新媒体</a> <a href="#"
										class="list-group-item a-wrap">平面媒体</a> <a href="#"
										class="list-group-item a-wrap">广播</a> <a href="#"
										class="list-group-item a-wrap">连环画</a> <a href="#"
										class="list-group-item a-wrap">桌游</a> <a href="#"
										class="list-group-item a-wrap">电子游戏</a> <a href="#"
										class="list-group-item a-wrap">网络漫画</a>
								</div>
							</div>
						</div>

						<div class="panel panel-default text-center " style="margin: 0">
							<div class="panel-heading" style="background-color: #3f72af">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseThree"
										style="text-decoration: none; color: #eee"> 叙事 </a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body" style="padding: 0">
									<a href="#" class="list-group-item a-wrap">通用的桥段</a> <a
										href="#" class="list-group-item a-wrap">实用的“魔法”</a> <a
										href="#" class="list-group-item a-wrap">塑造人物</a> <a href="#"
										class="list-group-item a-wrap">人物类型</a> <a href="#"
										class="list-group-item a-wrap">人物设置</a> <a href="#"
										class="list-group-item a-wrap">对白</a> <a href="#"
										class="list-group-item a-wrap">主题</a> <a href="#"
										class="list-group-item a-wrap">叙事手法</a> <a href="#"
										class="list-group-item a-wrap">副文本</a> <a href="#"
										class="list-group-item a-wrap">情节</a> <a href="#"
										class="list-group-item a-wrap">背景</a> <a href="#"
										class="list-group-item a-wrap">奇观</a>
								</div>
							</div>
						</div>

						<div class="panel panel-default text-center " style="margin: 0">
							<div class="panel-heading" style="background-color: #3f72af">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseFour"
										style="text-decoration: none; color: #eee"> 其他目录 </a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body" style="padding: 0">
									<a href="#" class="list-group-item a-wrap">电视节目</a> <a
										href="#" class="list-group-item a-wrap">贡献者</a> <a href="#"
										class="list-group-item a-wrap">创作手法</a> <a href="#"
										class="list-group-item a-wrap">创作者</a> <a href="#"
										class="list-group-item a-wrap">衍生作品</a> <a href="#"
										class="list-group-item a-wrap">语言</a> <a href="#"
										class="list-group-item a-wrap">创作规则</a> <a href="#"
										class="list-group-item a-wrap">商业运作</a> <a href="#"
										class="list-group-item a-wrap">人格分裂</a> <a href="#"
										class="list-group-item a-wrap">储藏室</a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
<style>
.nav-pills input
{
color:black;}
.celebrity {
	display: block;
	position: relative;
	width: 100%;
	margin: 0 auto;
	padding: 0;
	border: none;
}

.imgbox {
	width: 100%;
	height: 100%;
	padding: 20px;
	border-style: none;
	box-shadow: 5px;
	background-color: #eee;
	margin: 10px 0;
}

.search-fixed {
	width: 100%;
	/*height:500px;*/
	margin-left: 5px;
	background-color: #dedef8;
	border-style: none;
	border-radius: 5px;
}

.top-bar {
	height: 40px;
	width: 100%;
	margin-left: 0;
	background-color: #255782;
	border-style: none;
	border-radius: 5px;
	color: #eee;
	line-height: 40px;
	font-size: 16px;
}

.list-item-add {
	margin-left: -4px;
	width: 100%;
}

.sidebar-offcanvas ul {
	font-size: 18px;
}

.sidebar-offcanvas ul li {
	display: none;
	text-decoration: none;
}

.sidebar-offcanvas ul:hover li {
	display: block;
	background-color: #dedef8;
	font-size: 15px;
}

.a-wrap {
	height: 30px;
	font-size: 15px;
	line-height: 30px;
	padding: 0;
}

.plot-container {
	padding-top: 20px;
	padding-left: 1.2%;
}

.plot-box {
	width: 31%;
	padding: 10px;
	margin: 8px;
	box-shadow: 1px 1px 3px 2px rgba(0, 0, 0, 0.1);
	background-color: #eee;
	transition: all .2s;
}

.plot-box:hover {
	box-shadow: 2px 2px 8px 2px rgba(0, 0, 0, 0.2)
}

.plot-box img {
	width: 100%;
}
</style>
</div>
<footer>
	<p class="pull-right">
		<a href="#">Back to top</a>
	</p>
	<p>
		&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a>
		&middot; <a href="#">Terms</a>
	</p>
</footer>
<script type="text/javascript">
$(document).ready(function(){
    var $container = $('#plotWrapper');    
    $container.imagesLoaded(function(){
        $container.masonry({
            itemSelector: '.plot-box',
            //columnWidth: 10, //每两列之间的间隙为5像素s
            singleMode: true,
            percentPosition: true
        });
    });
    
});
</script>
</body>
</html>