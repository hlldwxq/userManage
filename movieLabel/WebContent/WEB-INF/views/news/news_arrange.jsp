<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../public/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../public/css/title.css">
    <script type="text/javascript" src="../public/js/jquery.js"></script>
    <script type="text/javascript" src="../public/js/bootstrap.js"></script>
    <!-- 本地bootstrap文件，最终切换为这个 -->-->
    <!-- 以下为网络的bootstrap链接，做测试用
   <!-- <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <script type="text/javascript" src="../public/js/echarts.js"></script>
    <script type="text/javascript" src="../public/js/china.js"></script>

    <title>新闻集合编排</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="container" style="margin-top: 60px;">
      	<div class="row">
      		<div class="col-xs-8 ">
      		  <h2 style="padding-left:30%;">新闻集合编排</h2>
      		</div>
      		<div class="col-xs-4"></div>
      	</div>
    </div>
<div class="container" style="margin-top: 40px">
   <div class="row">
   <div class="col-xs-2"></div>
   <div class="col-xs-9">
       <ul id="myTab" class="nav nav-tabs" >
           <li class="active"><a href="#outerdiv1" data-toggle="tab"  >标签集合编排</a></li>
           <li ><a href="#outerdiv2" data-toggle="tab"  >观众地域分布</a></li>
           <li ><a href="#outerdiv3"  data-toggle="tab"  >地域特色新闻</a></li>
       </ul>
       <div style="height:50px;"></div>
       <div class="dropdown" >
       <form action="${pageContext.request.contextPath}/news/news_arrange" method="post" id="form1" class="row">
           <div class="col-xs-10">
               <label style="padding-right:5px">时间：</label>
               <select name="years" id="years" form="form1"></select>
               <label>年  </label>
               <select name="months" id="months">

               </select>
               <select name="days" id="days">
               </select>
               <label style="padding:0px 5px">主题：</label>
               <select name="theme" id="theme">
                   <option>全部</option>
               </select>
          </div>
          <div class="form-group">
               <div class="col-sm-offset-1 col-sm-11">
                   <button id="btn-ensure-pie"  type="submit" class="btn btn-info">确定</button>
               </div>
          </div>
       </form>
       
         
          
       </div>
       <div style="height:50px"></div>
       <div id="myTabContent" class="tab-content" >
           <div class="tab-pane fade in active" id="outerdiv1">
               <form class="form-horizontal" role="form" style="margin-left:10%;width:60%;">
                   <div class="form-group">
                       <label   class="col-sm-2 control-label">纪念活动</label>
                       <div class="col-sm-10">
                           <input type="text" class="form-control" value="${labelCollection.getCeremonyAction()}"  placeholder="纪念活动">
                       </div>
                   </div>
                   <div class="form-group">
                       <label  class="col-sm-2 control-label">经济建设</label>
                       <div class="col-sm-10">
                           <input type="text" class="form-control" value="${labelCollection.getEconomicConstruction()}"  placeholder="经济建设">
                       </div>
                   </div>
                   <div class="form-group">
                       <label  class="col-sm-2 control-label">生态环境</label>
                       <div class="col-sm-10">
                           <input type="text" class="form-control" value="${labelCollection.getEntironment()}" placeholder="生态环境">
                       </div>
                   </div>
                   <div class="form-group">
                       <label  class="col-sm-2 control-label">健康</label>
                       <div class="col-sm-10">
                          <input type="text" class="form-control"  value="${labelCollection.getHealth()}" placeholder="健康">
                       </div>
                   </div>
                   <div class="form-group">
                       <label  class="col-sm-2 control-label">成功典范</label>
                       <div class="col-sm-10">
                          <input type="text" class="form-control" value="${labelCollection.getSuccessfulModel()}" placeholder="成功典范">
                       </div>
                   </div>
                   <div class="form-group">
                       <div class="col-sm-offset-2 col-sm-10">
                           <button type="submit" class="btn btn-info">保存</button>
                       </div>
                   </div>
               </form>
           </div>
           <div class="tab-pane fade" id="outerdiv2"><p class="text  text-danger">这里是中国地图区域</p>
               <div id="mapContainer" style="width: 800px;height:500px"></div>
   
   </div>
   <div class="tab-pane fade" id="outerdiv3">
       <div id="areaContainer" style="width: 500px;height: 300px;">
   </div>
   <div style="height:200px">
			<form class="form-horizontal" role="form" style="margin-left:10%;width:60%;">
                <div class="form-group">
                    <label   class="col-sm-2 control-label">风土人情</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="${areaPie.getEmotiontxt() }"  placeholder="风土人情">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">旅游文化</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="${areaPie.getCulturetxt() }" placeholder="旅游文化">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">民族特色</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="${areaPie.getNationtxt() }" placeholder="民族特色">
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">都市风情</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" value="${areaPie.getCitytxt() }"  placeholder="都市风情">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-info">保存</button>
                    </div>
                </div>
            </form>
		</div>
   </div>
   </div>
   <div class="col-xs-1"></div>
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
       var dom = document.getElementById("mapContainer");
       var mapChart = echarts.init(dom);
       var app = {};
       mapOption = null;
       
       mapOption = {
           title: {
               text: '搜索指数',
               left: 'center'
           },
           tooltip: {
               trigger: 'item'
           },
           legend: {
               orient: 'vertical',
               left: 'left',
               data:['省份']
           },
           visualMap: {
               min:0,
               max:1000,
               left: 'left',
               top: 'bottom',
               text: ['高','中','低'],    		// 文本，默认为数值文本
               color:['#FE4365','#FC9D9A','#F9CDAD'],
               calculable: true
           },
           toolbox: {
               show: true,
               orient: 'vertical',
               left: 'right',
               top: 'center',
               feature: {
                   restore: {},
                   saveAsImage: {}
               }
           },
           series: [
               {
                   name: '省份',
                   type: 'map',
                   mapType: 'china',
                   roam: true,
                   label: {
                       normal: {
                           show: true
                       },
                       emphasis: {
                           show: true
                       }
                   }
               }
           ]
       };

       //添加数据
       mapOption.series[0].data=[
           {name: '北京',value: ${areaMap.getProvince_bj()} },
           {name: '天津',value: ${areaMap.getProvince_tj()} },
           {name: '上海',value: ${areaMap.getProvince_sh()} },
           {name: '重庆',value: ${areaMap.getProvince_cq()} },
           {name: '河北',value: ${areaMap.getProvince_heb()} },
           {name: '河南',value: ${areaMap.getProvince_hen()} },
           {name: '云南',value: ${areaMap.getProvince_yn()} },
           {name: '辽宁',value: ${areaMap.getProvince_ln()} },
           {name: '黑龙江',value: ${areaMap.getProvince_hlj()} },
           {name: '湖南',value: ${areaMap.getProvince_hun()} },
           {name: '安徽',value: ${areaMap.getProvince_ah()} },
           {name: '山东',value: ${areaMap.getProvince_sd()} },
           {name: '新疆',value: ${areaMap.getProvince_xj()} },
           {name: '江苏',value: ${areaMap.getProvince_js()} },
           {name: '浙江',value: ${areaMap.getProvince_zj()} },
           {name: '江西',value: ${areaMap.getProvince_jx()} },
           {name: '湖北',value: ${areaMap.getProvince_hub()} },
           {name: '广西',value: ${areaMap.getProvince_gx()} },
           {name: '甘肃',value: ${areaMap.getProvince_gs()} },
           {name: '山西',value: ${areaMap.getProvince_sx()} },
           {name: '内蒙古',value: ${areaMap.getProvince_nmg()} },
           {name: '陕西',value: ${areaMap.getProvince_ssx()} },
           {name: '吉林',value: ${areaMap.getProvince_jl()} },
           {name: '福建',value: ${areaMap.getProvince_fj()} },
           {name: '贵州',value: ${areaMap.getProvince_gz()} },
           {name: '广东',value: ${areaMap.getProvince_gd()} },
           {name: '青海',value: ${areaMap.getProvince_qh()} },
           {name: '西藏',value: ${areaMap.getProvince_xz()} },
           {name: '四川',value: ${areaMap.getProvince_sc()} },
           {name: '宁夏',value: ${areaMap.getProvince_nx()} },
           {name: '海南',value: ${areaMap.getProvince_han()} },
           {name: '台湾',value: ${areaMap.getProvince_tw()} },
           {name: '香港',value: ${areaMap.getProvince_xg()} },
           {name: '澳门',value: ${areaMap.getProvince_am()} }
       ];
       
       var __min=mapOption.series[0].data[0].value,__max=0;
       for(var i=0;i<mapOption.series[0].data.length;i++){
    	   if(__min>mapOption.series[0].data[i].value){
    		   __min=mapOption.series[0].data[i].value;
    	   }
 			if(__max<mapOption.series[0].data[i].value){
    		   __max=mapOption.series[0].data[i].value;
    	   }
       };
       __min=parseInt(__min);
       __max=parseInt(__max);
      
       mapOption.visualMap.min=__min;
       mapOption.visualMap.max=__max;

       if (mapOption && typeof mapOption === "object") {
           mapChart.setOption(mapOption, true);
       }
   </script>
    <script type="text/javascript">
           var areaPieChart=echarts.init(document.getElementById("areaContainer"));
           var areadata=[
               {value:${areaPie.getEmotion()}, name:'风土人情', selected:true},
               {value:${areaPie.getCulture()}, name:'旅游文化', selected:true},
               {value:${areaPie.getNation()}, name:'民族特色',selected:true},
               {value:${areaPie.getCity()}, name:'都市风情'}
           ];
           var areaOption = {
               tooltip: {
                   trigger: 'item',
                   formatter: "{a} <br/>{b}: {c} ({d}%)"
               },
               legend: {
                   orient: 'vertical',
                   x: 'right',
                   data:['风土人情','旅游文化','民族特色','都市风情']
               },
               series: [
                   {
                       name:'特色主题分布',
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
                       data:areadata
                   }
               ]
           };
           areaPieChart.setOption(areaOption);
       </script>
</body>
</html>