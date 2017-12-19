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
<link rel="stylesheet" href="../public/css/bootstrap.css"
	type="text/css">
<title></title>
</head>
<body>
	<%@include file="../frame/header.jsp"%>
<script src="../public/js/echarts.js"></script>
<div id="content">
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">投资决策分析报告</h2>
    </div>
</div>
<div class="container" id="">
    <div class="row featurette">
        <div class="col-sm-1">

        </div>
        <div class="col-md-10">
            <h2 class="page-header">同类型20部电影</h2>
        </div>
    </div>
    <div class="row featurette">
        <div class="col-md-2"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
            <!--<h2 class="page-header">同类型20部电影</h2>-->
        </div>
        <div class="col-md-8">
            <p class="lead">平均票房：<%=request.getAttribute("boxOffice")%>万元</p>
            <p class="lead">发行档期：</p>
            <div id="Schedule" style="height: 550px;width: 600px;"></div>
            <script type="text/javascript">
                //app.title = '单轴散点图';
                var days=[];   
  <%
      String days[] = (String[]) request.getAttribute("name");
  	  String month[]=(String[])request.getAttribute("date");
      for (int i = 0; i < days.length; i++) {%>
          days.push("<%=days[i]%>");
          <%}%>
 
                var schedule=echarts.init(document.getElementById("Schedule"));
                var hours = [ '1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月','10月','11月', '12月'];
                /*var days = ['烈日灼心', '记忆大师', '战狼', '无间道', '非凡任务', '冲出亚马逊', '杀破狼', '杀破狼2', '窃听风云', '扫毒',
                    '暗战', '新警察故事', '枪火', '英雄本色', '不二神探', '新世界', '给爸爸的信', '赤道', '喋血双雄', '男儿本色'];
                */
                var data = [[0,<%=Integer.parseInt(month[0])-1%>,6],[1,<%=Integer.parseInt(month[1])-1%>,6],[2,<%=Integer.parseInt(month[2])-1%>,6],[3,<%=Integer.parseInt(month[3])-1%>,6],[4,<%=Integer.parseInt(month[4])-1%>,6],[5,<%=Integer.parseInt(month[5])-1%>,6],[6,<%=Integer.parseInt(month[6])-1%>,6],[7,<%=Integer.parseInt(month[7])-1%>,6],[8,<%=Integer.parseInt(month[8])-1%>,6],[9,<%=Integer.parseInt(month[9])-1%>,6],[10,<%=Integer.parseInt(month[10])-1%>,6],[11,<%=Integer.parseInt(month[11])-1%>,6],
                            [12,<%=Integer.parseInt(month[12])-1%>,6],[13,<%=Integer.parseInt(month[13])-1%>,6],[14,<%=Integer.parseInt(month[14])-1%>,6],[15,<%=Integer.parseInt(month[15])-1%>,6],[16,<%=Integer.parseInt(month[16])-1%>,6],[17,<%=Integer.parseInt(month[17])-1%>,6],[18,<%=Integer.parseInt(month[18])-1%>,6],[19,<%=Integer.parseInt(month[19])-1%>,6]],//【电影序号，上映月份-1，票房】
                
                            option = {
                    tooltip: {
                        position: 'top',
                        formatter: function (params,days) {
                            var res = params[0][0] + '<br/>';
                            var temp;
                            for (var i = 0; i < params.length; i++) {
                                if (params[i][2]==1)
                                {var rank="B"}
                                else if (params[i][2]==2)
                                {rank="A"}
                                else if (params[i][2]==3)
                                {rank="C"};

                                    res += params[i][1] + ": " + rank;
                                };
                                return res;
                                //return data[params.value[0]][2] + ' 亿 票房 ' + hours[params.value[0]] + ', ' + days[params.value[0]];
                        }
                    },
                    title: [],
                    singleAxis: [],
                    series: []
                };

                echarts.util.each(days, function (day, idx) {
                    option.title.push({
                        textBaseline: 'middle',
                        top: (idx + 0.5) * 100 / 21 + '%',
                        text: day
                    });
                    option.singleAxis.push({
                        left: 150,
                        type: 'category',
                        boundaryGap: false,
                        data: hours,
                        top: (idx * 100 / 21 + 5) + '%',
                        height: (100 / 21 - 10) + '%',
                        axisLabel: {
                            interval: 0
                        }
                    });
                    option.series.push({
                        singleAxisIndex: idx,
                        coordinateSystem: 'singleAxis',
                        type: 'scatter',
                        data: [],
                        symbolSize: function (dataItem) {
                            return dataItem[1] * 4;
                        }
                    });
                });

                echarts.util.each(data, function (dataItem) {
                    option.series[dataItem[0]].data.push([dataItem[1], dataItem[2]]);
                });
                schedule.setOption(option);
            </script>
            <p class="lead">主创团队：</p>
            <%
						String[] creator = (String[]) request.getAttribute("creator");
						for (int i = 0; i < creator.length; i++) {
					%>
					<p>
						<%=creator[i]%>
					</p>
					<%
						}
					%>
            <p class="lead">受众性别分布：</p>
            <div id="sexContainer" style="width: 50%;height: 300px"></div>
            <script type="text/javascript" src="../public/js/echarts.js"></script>
            <script type="text/javascript">
            var gender=[];   
            <%
                int gender[] = (int[]) request.getAttribute("gender");
                for (int i = 0; i < gender.length; i++) {%>
                    gender.push("<%=gender[i]%>");
                    <%}%>
                var sexPieChart=echarts.init(document.getElementById("sexContainer"));
                var sexPieoption = {
                    tooltip: {
                        trigger: 'item',
                        formatter: "{a} <br/>{b}: {c} ({d}%)"
                    },
                    legend: {
                        orient: 'vertical',
                        x: 'right',
                        data:['男','女']
                    },
                    series: [
                        {
                            name:'性别分布',
                            type:'pie',
                            selectedMode: 'single',
                            radius: [0, '80%'],

                            label: {
                                normal: {
                                    position: 'inner'
                                }
                            },
                            labelLine: {
                                normal: {
                                    show: false
                                }
                            },
                            data:[
                                {value:<%=gender[0]%>, name:'男', selected:true},
                                {value:<%=gender[1]%>, name:'女'}
                            ]
                        }
                    ]
                };
                sexPieChart.setOption(sexPieoption);
            </script>
            <p class="lead">受众年龄分布：</p>
            <div id="ageRadarContainer" style="width: 100%; height: 500px"></div>
            <script type="text/javascript">
            var age=[];   
            <%
                float age[] = (float[]) request.getAttribute("age");
                for (int i = 0; i < age.length; i++) {%>
                    age.push("<%=age[i]%>");
                    <%}%>
                //TODO 获取数据
                var data=[];
                //TODO 获取数据
                var ageRadarChart=echarts.init(document.getElementById("ageRadarContainer"));
                ageRadaroption = {
                    /*title: {
                     text: '用户年龄分布雷达图',
                     x:'left'
                     },
                     tooltip: {
                     trigger:'item'
                     },*/
                    legend: {
                        data: ['用户年龄分布(单位:%)']
                    },
                    radar: {
                        indicator: [
                            { name: '0~15岁', max: 100},
                            { name: '16~25岁', max: 100},
                            { name: '26~35岁', max: 100},
                            { name: '36~45岁', max: 100},
                            { name: '45岁以上', max: 100}
                        ],
                        axisTick:{
                            show:true
                        },
                        axisLabel:{
                            show:true
                        }
                    },
                    series: [
                        {
                            name: '用户年龄分布(单位:%)',
                            type: 'radar',
                            areaStyle: {normal: {}},
                            data : [
                                {
                                	value : [<%=age[0]%>,<%=age[1]%>,<%=age[2]%>,<%=age[3]%>,<%=age[4]%>],
                                    name: '各年龄阶段所占百分比'
                                }
                            ]
                        }],
                    animationDuration:50
                };
                window.onresize=ageRadarChart.resize;
                ageRadarChart.setOption(ageRadaroption);
            </script>
            <p class="lead">观众满意度：<%=request.getAttribute("score") %></p>
        </div>
    </div>
    <div class="row featurette">
        <div class="col-sm-1">

        </div>
        <div class="col-md-10">
            <h2 class="page-header">同类型20部电影</h2>
        </div>
    </div>
    <div class="row featurette ticket" id="tickect1" style="display:block;">
        <div class="col-md-1">

        </div>
        <%String[] name=(String[])request.getAttribute("name");
          String[] pic=(String[])request.getAttribute("pic");
          float[] allBoxOffice=(float[])request.getAttribute("allBoxOffice");
        %>
        <div class="col-md-3 grid">
            <h3>《<%=name[0]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[0]%>">
            <p>票房：<%=allBoxOffice[0]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[1]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[1]%>">
            <p>票房：：<%=allBoxOffice[1]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[2]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[2]%>">
            <p>票房：：<%=allBoxOffice[2]%>万元</p>
        </div>
        <div class="col-md-2 grid">
            <a type="button" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
        </div>
    </div>
    <div class="row featurette ticket" id="tickect2" style="display:none;">
        <div class="col-md-1">

        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[3]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[3]%>">
            <p>票房：：<%=allBoxOffice[3]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[4]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[4]%>">
            <p>票房：：<%=allBoxOffice[4]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[5]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[5]%>">
            <p>票房：：<%=allBoxOffice[5]%>万元</p>
        </div>
        <div class="col-md-2 grid">
            <a type="button" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
        </div>
    </div>
    <div class="row featurette ticket" id="tickect3" style="display:none;">
        <div class="col-md-1">

        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[6]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[6]%>">
            <p>票房：：<%=allBoxOffice[6]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[7]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[7]%>">
            <p>票房：：<%=allBoxOffice[7]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[8]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[8]%>">
            <p>票房：：<%=allBoxOffice[8]%>万元</p>
        </div>
        <div class="col-md-2 grid">
            <a type="button" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
        </div>
    </div>
    <div class="row featurette ticket" id="tickect4" style="display:none;">
        <div class="col-md-1">

        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[9]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[9]%>">
            <p>票房：：<%=allBoxOffice[9]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[10]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[10]%>">
            <p>票房：：<%=allBoxOffice[10]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[11]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[11]%>">
            <p>票房：：<%=allBoxOffice[11]%>万元</p>
        </div>
        <div class="col-md-2 grid">
            <a type="button" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
        </div>
    </div>
    <div class="row featurette ticket" id="tickect5" style="display:none;">
        <div class="col-md-1">

        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[12]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[12]%>">
            <p>票房：：<%=allBoxOffice[12]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[13]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[13]%>">
            <p>票房：：<%=allBoxOffice[13]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[14]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[14]%>">
            <p>票房：：<%=allBoxOffice[14]%>万元</p>
        </div>
        <div class="col-md-2 grid">
            <a type="button" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
        </div>
    </div>
    <div class="row featurette ticket" id="tickect6" style="display:none;">
        <div class="col-md-1">

        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[15]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[15]%>">
            <p>票房：：<%=allBoxOffice[15]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[16]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[16]%>">
            <p>票房：：<%=allBoxOffice[16]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[17]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[17]%>">
            <p>票房：：<%=allBoxOffice[17]%>万元</p>
        </div>
        <div class="col-md-2 grid">
            <a type="button" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
        </div>
    </div>
    <div class="row featurette ticket" id="tickect7" style="display:none;">
        <div class="col-md-1">

        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[18]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[18]%>">
            <p>票房：：<%=allBoxOffice[18]%>万元</p>
        </div>
        <div class="col-md-3 grid">
            <h3>《<%=name[19]%>》</h3>
            <img class="img-responsive" src="${pageContext.request.contextPath}/image/<%=pic[19]%>">
            <p>票房：：<%=allBoxOffice[19]%>万元</p>
        </div>
        <div class="col-md-2 grid">
            <a type="button" onclick="javascript:divrefresh('tickect');" style="cursor: pointer">>>换一批</a>
        </div>
    </div>
    <div class="row col-md-offset-6">
        <br>
        <button type="submit" class="btn" id="outputpdf">保存</button>
    </div>
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