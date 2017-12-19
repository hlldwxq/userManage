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
    <link rel="stylesheet" href="../public/css/title1.css" type="text/css">
    <link rel="stylesheet" href="../public/css/bootstrap.css" type="text/css">
    <title>节目内容安排推荐：节目资料页</title>
    <style>
        .sl_middle
        {
            line-height:60px;
        }
    </style>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">快乐大本营</h2>
    </div>
</div>
<div class="container">
<!--节目资料 -->
	<div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <h2 class="page-header">节目资料</h2>
    </div>
    <div class="col-md-6">
        <h3 class="text-center">节目内容</h3>
        <ul>
            <li>访谈类</li>
            <ol>
                <li>真心话大冒险</li>
                <li>辩论</li>
                <li>谁是卧底</li>
            </ol>
            <li>益智类</li>
            <ol>
                <li>你画我猜</li>
                <li>猜歌词</li>
                <li>啊啊啊啊科学实验站</li>
            </ol>
            <li>娱乐类</li>
            <ol>
                <li>木头人</li>
                <li>XXXX</li>
                <li>XXXX</li>
            </ol>
            <li>运动挑战类</li>
            <ol>
                <li>池到了</li>
                <li>爬坡木头人</li>
                <li>XXXX</li>
            </ol>
        </ul>
        <div class="text-right">
            <a href="#">导出数据>></a>
        </div>
        <div class="text-right">
            <a href="#">导入数据>></a>
        </div>
    </div>
    <div class="col-md-6">
        <h3 class="text-center">往期节目详细内容</h3>
        <table class="table table-bordered" style="background-color: #eee;;">
            <tr>
                <td class="col-md-8"><h4>20160713+名称/主题</h4></td>
                <td class="col-md-4"><h4>嘉宾</h4></td>
            </tr>
            <tr>
                <td class="col-md-8"><h4>时间+名称/主题</h4></td>
                <td class="col-md-4"><h4>嘉宾</h4></td>
            </tr>
            <tr>
                <td class="col-md-8"><h4>...</h4></td>
                <td class="col-md-4"><h4>...</h4></td>
            </tr>
            <tr>
                <td class="col-md-8"><h4>...</h4></td>
                <td class="col-md-4"><h4>...</h4></td>
            </tr>
            <tr>
                <td class="col-md-8"><h4>...</h4></td>
                <td class="col-md-4"><h4>...</h4></td>
            </tr>
            <tr>
                <td class="col-md-8"><h4>...</h4></td>
                <td class="col-md-4"><h4></h4></td>
            </tr>
            <tr>
                <td class="col-md-8"><h4>...</h4></td>
                <td class="col-md-4"><h4>...</h4></td>
            </tr>
            <tr>
                <td class="col-md-8"><h4>...</h4></td>
                <td class="col-md-4"><h4>...</h4></td>
            </tr>
        </table>
        <div class="text-right">
            <a href="#">更多>></a>
        </div>
        <div class="text-right">
            <a href="#">导出数据>></a>
        </div>
        <div class="text-right">
            <a href="#">导入数据>></a>
        </div>
    </div>
<!--收视数据 -->    
    <div class="row featurette">
        <div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">收视数据</h2>
        </div>
        <div class="col-md-10 col-md-offset-2">
            <div class="row">
                <div class="col-md-4" style="width: 400px;height:250px;">
                    <img class="img-responsive" src="image/收视率折线图.jpg">
                    <p class="text-center">收视率折线图</p>
                </div>
                <div class="col-md-4" style="width: 400px;height:250px;">
                    <img class="img-responsive" src="image/收视率柱状图.jpg">
                    <p class="text-center">收视率柱状图</p>
                </div>
            </div>
        </div>
        <br>
        <div class="col-md-12">
        <div class="text-right">
            <a href="#">导出数据>></a>
        </div>
        <div class="text-right">
            <a href="#">导入数据>></a>
        </div>
        </div>
    </div>
    
    
<!--环节搭配 -->
    <div class="row featurette">
        <div class="col-md-12 "><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">环节搭配</h2>
        </div>     
         <div class="col-md-12">
                <form>
                    <div class="col-md-5 col-md-offset-3">
                        <div class="form-group">
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="输入嘉宾姓名">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-default">匹配</button>
                    </div>
                </form>
            </div>
            <div class="col-md-5 "><h4 class="text-right">结果：</h4></div>
            <div class="col-md-7">
                <div class="col-md-6"><u>池到了</u></div>
                <div class="col-md-6"><u>你画我猜</u></div>
                <div class="col-md-6"><u>XXX</u></div>
                <div class="col-md-6"><u>XXX</u></div>
            </div>
          </div>  
          <div class="text-right">
            <a href="#">导出数据>></a>
          </div>
         <div class="text-right">
            <a href="#">导入数据>></a>
         </div>
    </div>
    
<!--环节时间安排 -->
    <div class="row featurette">
        <div class="col-md-12"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">环节时间安排</h2>
        </div>
        <div class="col-md-12">
            <div class="col-md-6 col-md-offset-3">
                <h4 class="col-md-offset-2">选择环节类型：</h4>
                <div class="checkbox">
                    <div class="col-md-12">
                        <div class="col-md-4 col-md-offset-4">
                            <label>
                                <input type="checkbox" value="">益智类
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4 col-md-offset-4">
                            <label>
                                <input type="checkbox" value="">娱乐类
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4 col-md-offset-4">
                            <label>
                                <input type="checkbox" value="">运动类
                            </label>
                        </div>
                    </div>
                   
                </div>
                <h4 class="col-md-offset-2">选择具体环节：</h4>
                <div class="checkbox">
                    <div class="col-md-12">
                        <div class="col-md-4 col-md-offset-4">
                            <label>
                                <input type="checkbox" value="">池到了
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4 col-md-offset-4">
                            <label>
                                <input type="checkbox" value="">谁是卧底
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4 col-md-offset-4">
                            <label>
                                <input type="checkbox" value="">实验站
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12 center-block">
                        <button type="button" class="btn btn-primary center-block">提交</button>
                    </div>
                </div>
            </div>
            <div class="col-md-5 "><h4 class="text-right">为您推荐：</h4></div>
            <div class="col-md-7">
                <div class="col-md-12">
                    <div class="col-md-2">
                        xxx
                    <div class="col-md-2">
                        xxx
                    </div>
                    <div class="col-md-2">
                        xxx
                    </div>
                    <div class="col-md-2">
                        xxx
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-2">
                        xxx
                    </div>
                    <div class="col-md-2">
                        xxx
                    </div>
                    <div class="col-md-2">
                        xxx
                    </div>
                    <div class="col-md-2">
                        xxx
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-right">
            <a href="#">导出数据>></a>
        </div>
        <div class="text-right">
            <a href="#">导入数据>></a>
        </div>
    </div>
</div>
<hr/>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
<script src="../public/js/jquery.js"></script>
<script src="../public/js/bootstrap.js"></script>
</body>
</html>
<!--收视数据部分：“导出数据>>"位置偏移 ——移回“导入数据>>"上面-->
<!--环节时间安排部分：“环节时间安排”标题偏移——实现和上面三个标题相同的效果 -->