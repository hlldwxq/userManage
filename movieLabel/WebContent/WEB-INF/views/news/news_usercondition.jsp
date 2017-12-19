<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head >
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../public/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../public/css/title.css">
    <script type="text/javascript" src="../public/js/jquery.js"></script>
    <script type="text/javascript" src="../public/js/bootstrap.js"></script>
    <script type="text/javascript" src="../public/js/echarts.js"></script>
    <!-- 本地bootstrap文件，最终切换为这个 -->
    <!-- 以下为网络的bootstrap链接，做测试用 -->
    <!-- <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
     <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
     <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

    <title>用户舆情</title>
</head>
<body>
<%@include file="../frame/header.jsp" %>
<div class="container" style="margin-top: 60px;">
    <div class="row" style="text-align: center;">
        <h2>用户舆情</h2>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-1"></div>
            <div class="col-sm-10" style="text-align: center;">
                <form action="${pageContext.request.contextPath}/news/news_usercondition" method="POST" style="margin-left:10%;width:60%;margin-top:2%;" id="form1">
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
                    <button type="submit" class="btn btn-info" style="margin-left: 30%">确定</button>
                </form>
			    <div class="row">
                    <div class="col-sm-5">
                        <h5>用户评论标签云</h5>
                        <div style="height:100px;">这里插入可视化图片</div>
                    </div>
                    <div class="col-sm-5">
                        <h5>用户年龄分布</h5>
                        <div id="ageRadarContainer" style="width: 100%; height: 200px"></div>
                       
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-5 ">
                      <h5>用户性别分布</h5>
                        <div id="sexContainer" style="width: 100%;height: 200px"></div>
                        
                    </div>
                    <div class="col-sm-5 ">
                      <h5>用户评论情感分析</h5>
                        <div id="mediaContainer" style="width: 100%;height: 200px"></div>
                 
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-6">
                      <h5>用户评论</h5>
                          <div style="height:200px;">这里插入可视化图片</div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                <div class="col-sm-offset-4 col-sm-8">
                    <button type="submit" class="btn btn-info btn-lg">保存</button>
                </div>
            </div>
			<div class="col-sm-1"></div>
	    </div>
    </div>
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
    var mediaPieChart=echarts.init(document.getElementById("mediaContainer"));
    var data=[
        {value:${sentiment.getGoodsentiment()}, name:'正常', selected:true},
        {value:${sentiment.getNeutralsentiment()}, name:'中性', selected:true},
        {value:${sentiment.getBadsentiment()}, name:'负面'}
    ];
    var option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'right',
            data:['正常','中性','负面']
        },
        series: [
            {
                name:'用户舆情分布',
                type:'pie',
                selectedMode: 'multiple',
                radius: [0, '80%'],

                label: {
                    normal: {
                        position: 'outer'
                    }
                },
                labelLine: {
                    normal: {
                        show: true
                    }
                },
                data:data
            }
        ]
    };
    mediaPieChart.setOption(option);
</script>
<script type="text/javascript">
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
                        value : [${sentiment.getUpage15()},${sentiment.getUpage25()},${sentiment.getUpage35()},${sentiment.getUpage45()},${sentiment.getUpother()}],
                        name: '各年龄阶段所占百分比'
                    }
                ]
            }],
        animationDuration:100
    };
    window.onresize=ageRadarChart.resize;
    ageRadarChart.setOption(ageRadaroption);
</script>
<script type="text/javascript">
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
                    {value:${sentiment.getGendermale()}, name:'男', selected:true},
                    {value:${sentiment.getGenderfemale()}, name:'女'}
                ]
            }
        ]
    };
    sexPieChart.setOption(sexPieoption);
</script>
</body>
</html>