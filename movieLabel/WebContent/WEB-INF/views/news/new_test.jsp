<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <script src="../js/jquery.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="../js/bootstrap.js"></script>
    
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="container" style="margin-top:60px;margin-left:28%;width:40%;">
   <div class="row">
   <ul id="myTab" class="nav nav-tabs" >
      <li class="active col-xs-3">
         <a href="#outerdiv1" data-toggle="tab"  style="margin-left:2%;">标签集合编排</a>
      </li>
      <li class="col-xs-3"><a href="#outerdiv2" data-toggle="tab"  style="margin-left:2%;">观众地域分布</a></li>
      <li class="col-xs-3"><a href="#outerdiv3"  data-toggle="tab"  style="margin-left:2%;">地域特色新闻</a></li>
   </ul>
   </div>
</div>
<div style="height:50px"></div>
<div class="dropdown" style="margin-left:28%;width:50%;">
   <form action="" style="margin-left:10%;width:60%;" id="form1">
            <label style="padding-right:5px">时间：</label>
            <select name="years" id="years">
      
            </select>
            <label>年   </label>
            <select name="months" id="months">
      
            </select>
            <select name="days" id="days">
            </select>
            <label style="padding:0px 5px">主题：</label>
            <select name="theme" id="theme">
                   <option>全部</option>
            </select>
   </form>
   <div class="form-group" style="margin-left:40%">
            <div class="col-sm-offset-2 col-sm-10">
               <button type="submit" class="btn btn-info">确定</button>
            </div>
   </div>
</div>   

<div style="height:50px"></div>

<div id="myTabContent" class="tab-content" style="margin-left:auto;margin-right:auto;width:60%;">
   <div class="tab-pane fade in active" id="outerdiv1">
      <form class="form-horizontal" role="form" style="margin-left:10%;width:60%;">
            <div class="form-group">
               <label   class="col-sm-2 control-label">纪念活动</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="纪念活动">
               </div>
            </div>
            <div class="form-group">
               <label  class="col-sm-2 control-label">经济建设</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="经济建设">
                </div>
             </div>
            <div class="form-group">
               <label  class="col-sm-2 control-label">生态环境</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="生态环境">
               </div>
            </div>
            <div class="form-group">
               <label  class="col-sm-2 control-label">健康</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="健康">
               </div>
            </div>
            <div class="form-group">
               <label  class="col-sm-2 control-label">成功典范</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="成功典范">
               </div>
            </div>
        
            <div class="form-group">
               <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-info">保存</button>
            </div>
            </div>
            </form>
   </div>
   <div class="tab-pane fade" id="outerdiv2">
       <div style="margin-left:10%;width:60%;height:80px">
            <p class="text  text-danger">这里是中国地图区域</p>
      </div>
   </div>
   <div class="tab-pane fade" id="outerdiv3">
      <div style="margin-left:10%;width:60%;height:80px">
            <p class="text  text-danger">这里是饼图区域</p>
      </div>
      <form class="form-horizontal" role="form" style="margin-left:10%;width:60%;">
            <div class="form-group">
               <label   class="col-sm-2 control-label">风土人情</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="风土人情">
               </div>
            </div>
            <div class="form-group">
               <label  class="col-sm-2 control-label">旅游文化</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="旅游文化">
                </div>
             </div>
            <div class="form-group">
               <label  class="col-sm-2 control-label">民族特色</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="民族特色">
               </div>
            </div>
            <div class="form-group">
               <label  class="col-sm-2 control-label">都市风情</label>
               <div class="col-sm-10">
                  <input type="text" class="form-control"  placeholder="都市风情">
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

<div style="height:200px"></div>
<script>
      var years=document.getElementById("years");
      for(var i=2017;i>1990;i--) {
         years.add(new Option(i,i));
         if(i==2015){
        	 o=new Option(i,i);
        	 years.add(o);
        	 o.selected="selected";
         }
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
</script>
<style>
    h1,h2{
        margin-left: 20px;
        margin-right: 20px;
    }
    .navbar ul>li{
        font-family: 微软雅黑;
        white-space: nowrap;/*nowrap 	文本不会换行，文本会在在同一行上继续，直到遇到 <br> 标签为止。*/
        font-size: 20px;
        font-weight: 100;
        display: block;
        text-decoration: none;
        color: whitesmoke;
        float: left;

    }
    .navbar ul>li>a{
        display: block;
        color: white;
        text-decoration: none;
        margin: 0 auto;
        padding: 0;
        border: 0;
        height: 100%;
        width: 100%;
    }
    .navbar  ul>li:hover{
        color: white;
    }
    .navbar ul ul{
        padding: 0;
        margin: 0;
        position: absolute;

        z-index: 1;
        letter-spacing: 0;
        list-style-type: none;
        display: none;
    }
    .navbar li li{
        white-space: nowrap;
        position: relative;
        float: none;
        margin: 0;
        /* padding: 6px 25px 8px;*/
        display: block;
        background-color: rgb(51, 51, 51);
        /*background-color: #398755;*/
    }
    .navbar li li a {
        font-size: 18px;
        display: block;
        width: 100%;
        height: 100%;
        color: white;
        margin: 0;
        padding: 6px 25px 8px;
        font-family: 华文细黑;
    }
    .navbar li li:hover{
        /*background-color: #398755;*/
        background-color: rgba(51, 51, 51, 0.91);
        filter: alpha(opacity=75); /*IE滤镜，透明度50%*/
        -moz-opacity:0.75; /*Firefox私有，透明度50%*/
        opacity:0.75;/*其他，透明度50%*/;

    }
    .navbar li li a:hover{
        color: #9d9d9d;
        text-decoration: none;
    }
    .navbar li:hover ul {
        display: block;
    }
    #mov_a1 {
        height: 360px;
        width: 200px;
        background: url("../image/mov_red.jpg");
    }
    #mov_a2 {
        height: 180px;
        width: 300px;
        background: url("../image/mov_blue1.jpg");
    }
    #mov_a3 {
        height: 180px;
        width: 300px;
        background: url("../image/mov_yellow.jpg");
    }
    #mov_a4 {
        height: 150px;
        width: 500px;
        background: url("../image/mov_pink.jpg");
    }
    .bigbox {
        position: relative;
        display: block;
        float: left;
        margin: 20px;
        padding: 0;
        border: none;
        width: 550px;
        background-color: transparent;
    }
    .bigbox>h2 {
        font-size: 20px;
        font-family: 黑体;
        display: block;
        margin: 0 0 10px;
        border-bottom: 1px solid #369ad4;
        padding: 20px 20px;
        color: #347bb7;
        position: relative;
    }
    .bigbox a {
        font-size: 15px;
        color: #3b67b9;
        margin: 5px 10px;
        /*text-decoration: solid;
        text-decoration-color: #7f86c7;*/
    }
    .bigbox>p {
        font-size: 15px;
        color: #000000;
        margin: 10px;
    }
    .box{
        position: relative;
        display: block;
        overflow: hidden;
        float: left;
        margin: 0 auto;
        padding: 0;
        border: none;
        color: white;
        text-align: center;
        vertical-align: middle;
        /* background-color: #f5f5f5;*/
    }
    .box a {
        display: block;
        float: left;
        text-decoration: none;
        margin: 0 auto;
        border: none;
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
    }
    .box p{
        font-family: song;
        font-size: 20px;
        position: relative;
        left: 60px;
    }
    .box h1 {
        position: relative;
        top: 30%;
        font-family: 微软雅黑;
        font-size: 25px;
    }

</style>

</body>
</html>