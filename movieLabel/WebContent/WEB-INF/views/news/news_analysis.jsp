<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head >
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../public/css/bootstrap.css">
    <!--<script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>-->
    <!-- 本地bootstrap文件，最终切换为这个 -->
    <!-- <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">以下为网络的bootstrap链接，做测试用 -->

    <link href="../public/css/title.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../public/js/echarts.js"></script>
    <title>节目播出形式分析指导</title>
</head>

<body>
 <%@include file="../frame/header.jsp" %>
<div class="container" style="margin-top: 60px;">
	<div class="row">
		<h2 style="text-align: center">节目播出形式分析指导</h2>
	</div>
</div>
<div class="container" >
	<div class="row">
	  	<div class="col-xs-2"></div>
	  	<div class="col-xs-8">
		<ul id="myTab"  class="nav nav-tabs" >
			<li class="active" >
				<a href="#outerdiv2" data-toggle="tab" aria-expanded="true">用户收视习惯</a>
			</li>
			<li ><a href="#outerdiv1" data-toggle="tab" aria-expanded="false">收 视 率</a></li>
		</ul>
		<div class="tab-content">
			<div id="outerdiv2"  class="tab-pane active">
				<div style="margin-left:10%;width:80% ;margin-top:4%;">
				  	<h4 style="text-align: center">播 出 时 间</h4>
					<div style="height:200px;">这里插入可视化图片</div>
				</div>
      			<div class="row">
      	  			<div class="col-sm-1 "></div>
					<div class="col-sm-4 ">
						<h5 style="text-align: center">不同收视习惯用户年龄分布</h5>
						<div id="ageHistContainer" style="width: 250px; height: 400px"></div>
						<script type="text/javascript">
							var ageHistChart=echarts.init(document.getElementById("ageHistContainer"));

							var data=[];
							//TODO 根据真实数据计算出相应的条形图的位置
							var ageHistoption = {
								/*title:{
									show:true,
									text:"不同收视习惯年龄用户分布图"
								},*/
								tooltip : {
									trigger: 'axis',
									axisPointer : {            // 坐标轴指示器，坐标轴触发有效
										type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
									},
									formatter: function (params) {
										var tar = params[1];
										return tar.name + '<br/>' + tar.seriesName + ' : ' + tar.value+'%';
									}
								},
								legend: {
									data:['首播','重播','互联网']
								},
								grid: {
									left: '3%',
									right: '4%',
									bottom: '3%',
									containLabel: true
								},
								toolbox:{
									show:true,
									feature: {
										saveAsImage: {
											pixelRatio: 2
										}
									}
								},
								xAxis : [
									{
										type : 'category',
										data:['全部','首播','重播','互联网']
									}
								],
								yAxis : [
									{
										name:'年龄分布',
										type : 'value'
									}
								],
								series : [
									{
										name:'全部',
										type:'bar',
										stack: '分布',
										width:'20%',
										data:[0,20,30,10],
										itemStyle:{
											normal:{
												color:"#FFF"
											}
										}
									},
									{
										name:'占比',
										type:'bar',
										stack: '分布',
										width:'20%',
										data:[100,10,50,70]
									}
								]
							}
							ageHistChart.setOption(ageHistoption);
							window.onresize=ageHistChart.resize;
			</script>
					</div>
					<div class="col-sm-1 "></div>
					<div class="col-sm-4 ">
						<h5 style="text-align: center">用户收视习惯</h5>
						<div id="ageRadarContainer" style="width:250px ;height:400px;"></div>
						
					</div>
				</div>
				<div class="col-sm-offset-4 col-sm-8">
					<button type="submit" class="btn btn-info btn-lg">保存</button>
				</div>
      			</div>
			  	<div id="outerdiv1" class="tab-pane container" >
				  	<form action="${pageContext.request.contextPath}/news/news_analysis" method="POST" style="margin-left:10%;width:60%;margin-top:20px;" id="form1">
						<label>时间:</label>
							<select name="years" id="years">
							</select>
							<label >年</label>
							<select name="months" id="months">
							</select>
							<select name="days" id="days">
							</select>
							<label>主题：</label>
							<select name="theme" id="theme">
								<option>全部</option>
							</select>
							<div class="form-group" style="margin-left:40%">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-info">确定</button>
						</div>
					</div>
					</form>
						
					<div style="width:600px;">
						<div id="watchRateContainer" style="width: 600px ; height: 300px"></div>
						<div class="col-sm-offset-4 col-sm-12" style="margin: 20px 0">
							<button type="submit" class="btn btn-info btn-lg">保存</button>
						</div>
					</div>
      			</div>
      		</div>
      	</div>
		<div class="col-xs-3"></div>
	</div>
</div>
  <footer>
      <p class="pull-right"><a href="#">Back to top</a></p>
      <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>
<script>
		var years=document.getElementById("years");
		for(var i=2017;i>1990;i--) {
			years.add(new Option(i,i));
		}
		var months=document.getElementById("months");
		for(var i=1;i<13;i++) {
			months.add(new Option(i,i));
		}
		var labelone=document.createElement("label");
		labelone.innerText="月  ";
		insertAfter(labelone,months);
		var days=document.getElementById("days");
		for(var i=1;i<32;i++) {
			days.add(new Option(i,i));
		}
		var labeltwo=document.createElement("label");
		labeltwo.innerText="日";
		insertAfter(labeltwo,days);
		function insertAfter(newElement, targetElement){
			var parent = targetElement.parentNode;
			if (parent.lastChild == targetElement) {
        
				parent.appendChild(newElement);
			} else {
				parent.insertBefore(newElement, targetElement.nextSibling);
        
			}
		}
		
		/*
		*To select a correct date for the page.
		*/
		 function _selected(year,month,day){
	    	  for(var i=0;i<years.options.length;i++){
	    		  if(years.options[i].value==year){
	    			  years.options[i].selected='selected';
	    			  break;
	    		  }
	    	  }
	    	  for(var i=0;i<months.options.length;i++){
	    		  if(months.options[i].value==month){
	    			  months.options[i].selected='selected';
	    			  break;
	    		  }
	    	  }
	    	  for(var i=0;i<days.options.length;i++){
	    		  if(days.options[i].value==day){
	    			  days.options[i].selected='selected';
	    			  break;
	    		  }
	    	  }
	      }
	      //选择日期
	      _selected(${dateStamp.getYears()},${dateStamp.getMonths()},${dateStamp.getDays()});
</script>
<script type="text/javascript">
	//TODO 获取数据
	var data=[];
	//TODO 获取数据
	var ageRadarChart=echarts.init(document.getElementById("ageRadarContainer"));
	ageRadaroption = {
		/*title: {
			text: '用户年龄分布雷达图',
			x:'left'
		},*/
		tooltip: {
			trigger:'item'
		},
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
						value : [40,20,10,30,50],
						name: '各年龄阶段所占百分比'
					}
				]
			}],
		animationDuration:50
	};
	window.onresize=ageRadarChart.resize;
	ageRadarChart.setOption(ageRadaroption);
</script>
<script type="text/javascript">
/*
 * @author luyufan
 */
var watchRateChart=echarts.init(document.getElementById("watchRateContainer"));
//Data Interface
var __TVstr='${rawTVnamesStr}';
var __Citystr='${rawCitynamesStr}';
var __RateStr='${rawRateDataStr}';
var __raw__ratedata=__RateStr.split("$");
var __TVnames=__TVstr.split("#");
var __Citynames=__Citystr.split("#");
var __ratedata=[];
for(var i=0;i<__raw__ratedata.length;i++){
	var _temprateArray=__raw__ratedata[i].split("#");
	for(var j=0;j<_temprateArray.length;j++){
		_temprateArray[j]=parseFloat(_temprateArray[j]);
	}
	__ratedata.push(_temprateArray);
}


var option = {
	tooltip : {
		trigger: 'item',
		axisPointer : {
			type: 'line'
		}
	},
	grid: {
		left: '3%',
		right: '4%',
		bottom: '3%',
		containLabel: true
	},
	toolbox:{
		show:true,
		feature: {
			saveAsImage: {
				pixelRatio: 2
			},
			magicType:{show:true,type:['line','bar']}
		}
	},
	yAxis : [
		{
			name:'收视率',
			type : 'value',
			axisLabel: {
				formatter: '{value} %'
			}
		}
	],
	
}

option.legend={data:__TVnames};
option.xAxis=[
	{
		type : 'category',
		data:__Citynames,
		boundaryGap: false
	}
];
var series=[];

for(var i=0;i<__TVnames.length;i++){
	series.push({
		name:__TVnames[i],
		type:'line',
		data:__ratedata[i],
		markPoint: {
			data: [
				{type: 'max', name: '最大值'},
				{type: 'min', name: '最小值'}
			]
		},
		markLine: {
			data: [
				{type: 'average', name: '平均值'}
			]
		}
	});
};
option.series=series;
watchRateChart.setOption(option);
window.onresize=watchRateChart.resize;
</script>
</body>
</html>