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
    <!--
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

    <title>热点话题筛选</title>
</head>
<body>
<%@include file="../frame/header.jsp" %>
<div class="container" style="margin-top: 60px;">
    <div class="row">
        <div class="col-sm-12 " style="text-align: center;">
            <h2 >新闻素材筛选</h2>
        </div>
    </div>
</div>
  <div id="outerdiv1"  class="tab_pane active">
      <div class="row">
	      <div class="col-sm-1"></div>
	      <div class="col-sm-10">
            <div style="text-align: center;margin:2% 0">
              <h3>热点话题筛选：</h3>
                <form action="${pageContext.request.contextPath}/news/news_hotTopicSelect" method="POST" style="margin-left:10%;width:60%;" id="form1">
                        <span style="padding-right:10px;">时间</span>
                        <select name="before_year" id="years">
                        </select>
                        <span style="padding-right:5px;">年</span>
                        <select name="before_month" id="months">
                        </select>
                        <span style="padding-left:15px;padding-right:15px;">
                          至:
                        </span>
                        <select name="next_year" id="yearstwo">
                        </select>
                        <span style="padding-right:5px;">年</span>
                        <select name="next_month" id="monthstwo">
                        </select>
                    <button type="submit" class="btn btn-info" style="margin-left: 30%">确定</button>
                </form>
					<div class="form-group" style="margin-left:40%">
						<div class="col-sm-offset-3 col-sm-9">

						</div>
					</div>
					</div>
			<div id="canvasContainer" style="margin-left:auto;margin-right:auto;width:100%;height:400px;">    <!--插入图片时候记得改变高度和宽度-->
			    此处放可视化图片
			</div>
              <script type="text/javascript" src="../public/js/echarts.js"></script>
             
			<div style="width:10%;margin: 0 auto;">
			  <button type="submit" class="btn btn-info btn-lg" >保存报告</button>
			</div>
			<div class="col-xs-2"></div>
		</div>
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
		 function _selected(year,month){
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
	      }
	      //选择日期
	      _selected(${dateStamp.getBefore_year()},${dateStamp.getBefore_month()});
		
		var years=document.getElementById("yearstwo");
		for(var i=2017;i>1990;i--) {
			years.add(new Option(i,i));
		}
		var months=document.getElementById("monthstwo");
		for(var i=1;i<13;i++) {
			months.add(new Option(i,i));
		}
		var labelthree=document.createElement("label");
		labelthree.innerText="月  ";
		insertAfter(labelthree,monthstwo);
		
		
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
		 function _selected(year,month){
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
	      }
	      //选择日期
	      _selected(${dateStamp.getNext_year()},${dateStamp.getNext_month()});
</script>
<script type="text/javascript">
   var hotTagChart=echarts.init(document.getElementById("canvasContainer"));
    var __Topicstr='${rawTopicStr}';
    var __Labelstr='${rawLabelStr}';
    var __LabelDatastr='${rawLabelDataStr}';
    var topic=__Topicstr.split("#");
    var label=__Labelstr.split("#");
    var rawLabeldata=__LabelDatastr.split("$");
    var labelnum=[];
    for(var i=0;i<rawLabeldata.length;i++){
    	var _tempnumArray=rawLabeldata[i].split("#");
    	for(var j=0;j<_tempnumArray.length;j++){
    		_tempnumArray[j]=parseFloat(_tempnumArray[j]);
    	}
    	labelnum.push(_tempnumArray);
    }
    
    var option={
        tooltip : {
            trigger: 'item',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        toolbox:{
            show:true,
            feature:{
                saveAsImage:{}
            }
        },
        yAxis:[
            {
                type:'value'
            }
        ]
    }
    option.legend={data:topic};
    option.xAxis=[
        {
            type:'category',
            data:label,
            axisLabel:{
                interval:0
            }
        }
    ];
    var series=[];
    for(var i=0;i<topic.length;i++){
    	series.push({
            name:topic[i],
            type:'bar',
            data:labelnum[i]
    	});
    };
    option.series=series;
    hotTagChart.setOption(option);
    window.onresize=hotTagChart.resize;
    

</script>
</body>
</html>