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
    <title>预告拍摄分析结果</title>
</head>
<body>
<%@include file="../frame/header.jsp" %>
<script type="text/javascript" src="../public/js/echarts.js"></script>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">预告拍摄分析报告</h2>
    </div>
</div>
<div class="container">
    <div class="row featurette">
        <div class="col-md-4"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">相似影片</h2>
        </div>
        <div class="col-md-8">
            <h3><%=request.getAttribute("name") %></h3>
            <div class="row">
                <div class="col-md-4">
                    <div id="noun" style="width: 100%; height: 300px"></div>
                    <script type="text/javascript">
                        //TODO 获取数据
                        // var data=[];
                        //TODO 获取数据
                        
                         var noun=[];  
                        var nounNum=[];
                        var verb=[];
                        var verbNum=[];
                        var adjective=[];
                        var adjectiveNum=[];
  <%
      String noun[][] = (String[][]) request.getAttribute("noun");
  	  String verb[][] = (String[][]) request.getAttribute("verb");
  	  String adjective[][] = (String[][]) request.getAttribute("adjective");
      for (int i = 0; i < noun[0].length; i++) {%>
          noun.push("<%=noun[0][i]%>");
          nounNum.push("<%=noun[1][i]%>");
          <%}
     
      for (int i = 0; i < verb[0].length; i++) {%>
          verb.push("<%=verb[0][i]%>");
          verbNum.push("<%=verb[1][i]%>");
    <%}
  
      for (int i = 0; i < adjective[0].length; i++) {%>
          adjective.push("<%=adjective[0][i]%>");
          adjectiveNum.push("<%=adjective[1][i]%>");
     <%}%>
                        
                        var wordbar=echarts.init(document.getElementById("noun"));
                        option = {
                            color: ['#3398DB'],
                            tooltip : {
                                trigger: 'axis',
                                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                }
                            },
                            grid: {
                                left: '3%',
                                right: '4%',
                                bottom: '3%',
                                containLabel: true
                            },
                            xAxis : [
                                {
                                    type : 'category',
                                    data : noun, //['救赎', '痛苦', '愤怒', '酒', '希望', '火'],
                                    axisTick: {
                                        alignWithLabel: true
                                    }
                                }
                            ],
                            yAxis : [
                                {
                                    type : 'value'
                                }
                            ],
                            series : [
                                {
                                    name:'数量',
                                    type:'bar',
                                    barWidth: '60%',
                                    data: nounNum//[1,3,2,4,6,2]
                                }
                            ]
                        };
                        wordbar.setOption(option, true);
                    </script>
                    <p class="text-center">名词</p>
                </div>
                <div class="col-md-4">
                    <div id="verb" style="width: 100%; height: 300px"></div>
                    <script type="text/javascript">
                        //TODO 获取数据
                        // var data=[];
                        //TODO 获取数据
                        var wordbar=echarts.init(document.getElementById("verb"));
                        option = {
                            color: ['#3398DB'],
                            tooltip : {
                                trigger: 'axis',
                                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                }
                            },
                            grid: {
                                left: '3%',
                                right: '4%',
                                bottom: '3%',
                                containLabel: true
                            },
                            xAxis : [
                                {
                                    type : 'category',
                                    data : verb,//['跑', '杀戮', '活着', '救', '放弃', '得到'],
                                    axisTick: {
                                        alignWithLabel: true
                                    }
                                }
                            ],
                            yAxis : [
                                {
                                    type : 'value'
                                }
                            ],
                            series : [
                                {
                                    name:'数量',
                                    type:'bar',
                                    barWidth: '60%',
                                    data:verbNum//[1,3,2,4,6,2]
                                }
                            ]
                        };
                        wordbar.setOption(option, true);
                    </script>
                    <p class="text-center">动词</p>
                </div>
                <div class="col-md-4">
                    <div id="adjective" style="width: 100%; height: 300px"></div>
                    <script type="text/javascript">
                        //TODO 获取数据
                        // var data=[];
                        //TODO 获取数据
                        var wordbar=echarts.init(document.getElementById("adjective"));
                        option = {
                            color: ['#3398DB'],
                            tooltip : {
                                trigger: 'axis',
                                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                }
                            },
                            grid: {
                                left: '3%',
                                right: '4%',
                                bottom: '3%',
                                containLabel: true
                            },
                            xAxis : [
                                {
                                    type : 'category',
                                    data : adjective,//['轻', '遥远', '明显', '空洞', '美', '困难'],
                                    axisTick: {
                                        alignWithLabel: true
                                    }
                                }
                            ],
                            yAxis : [
                                {
                                    type : 'value'
                                }
                            ],
                            series : [
                                {
                                    name:'数量',
                                    type:'bar',
                                    barWidth: '60%',
                                    data:adjectiveNum//[1,3,2,4,6,2]
                                }
                            ]
                        };
                        wordbar.setOption(option, true);
                    </script>
                    <p class="text-center">形容词</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row featurette">
        <div class="col-md-4"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <h2 class="page-header">影片卖点</h2>
        </div>
        <div class="col-md-8">
            <p class="lead">导演：<%=request.getAttribute("director") %></p>
            <p class="lead">话题：<%=request.getAttribute("topic") %></p>
            <p class="lead">监制：<%=request.getAttribute("supervisor") %></p>
            <p class="lead">主演：<%=request.getAttribute("actors") %></p>
            <p class="lead">粉丝营销：<%=request.getAttribute("fansMarketing") %></p>
        </div>
    </div>
    <div class="row featurette">
        <div class="col-md-4">
            <h2 class="page-header">预告片</h2>
        </div>
        <div class="col-md-8">
            <h2>参考片库：</h2><p><%=request.getAttribute("type") %></p>
            <h2>参考预告片：</h2><p>《<%=request.getAttribute("name") %>》</p>
            <h2>情感分析：</h2><p>《<%=request.getAttribute("name") %>》</p>
            <div id="emotion" style="width: 100%; height: 500px"></div>
            <script type="text/javascript">
                //TODO 获取数据
                // var data=[];
                //TODO 获取数据
                var emotionAnalyst=[];
                 <%
      String emotionAnalyst[] = (String[]) request.getAttribute("emotion");

      for (int i = 0; i < emotionAnalyst.length; i++) {%>
          emotionAnalyst.push("<%=Integer.parseInt(emotionAnalyst[i])%>");
          <%}%>
     
                var emotion=echarts.init(document.getElementById("emotion"));
                //app.title = '多 X 轴示例';

                var colors = ['#5793f3', '#d14a61', '#675bba'];


                option = {
                    color: colors,

                    tooltip: {
                        trigger: 'none',
                        axisPointer: {
                            type: 'cross'
                        }
                    },
                    legend: {
                        data:['情感变化']
                    },
                    grid: {
                        top: 70,
                        bottom: 50
                    },
                    xAxis: [
                        {
                            type: 'category',
                            axisTick: {
                                alignWithLabel: true
                            },
                            axisLine: {
                                onZero: false,
                                lineStyle: {
                                    color: colors[1]
                                }
                            },
                            axisPointer: {
                                label: {
                                    formatter: function (params) {
                                        return params.value
                                                + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                                    }
                                }
                            },
                            data: ["10'", "20'", "30'", "40'", "50'", "60'", "70'", "80'", "90'", "100'", "110'", "120'"]
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value'
                        }
                    ],
                    series: [
                        {
                            name:'情感指数',
                            type:'line',
                            smooth: true,
                            data: emotionAnalyst//[3.9, -5.9, 11.1, 18.7, -48.3, 69.2, 231.6, 46.6, 55.4, 18.4, 90.3, 0.7]
                        }
                    ]
                };
                emotion.setOption(option, true);
            </script>
        </div>
    </div>
    <div class="row featurette">
        <div class="col-md-4">
            <h2 class="page-header">投放建议</h2>
        </div>
        <div class="col-md-8">
            <p>1.xxx</p>
            <p>2.xxx</p>
            <p>3.xxx</p>
        </div>
    </div>
    <div class="row col-md-offset-6">
        <br>
        <button type="submit" class="btn">保存</button>
    </div>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>