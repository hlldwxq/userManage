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
	<!--<!-- 本地bootstrap文件，最终切换为这个 -->-->
    <!-- 以下为网络的bootstrap链接，做测试用
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

    <title>花絮精彩片段</title>
</head>
<body>
<%@include file="../frame/header.jsp" %>
<div class="container" style="margin-top: 60px">
	<div class="row">
		<div class="col-sm-10 " style="text-align: center">
		 	<h2 >花絮精彩片段生成</h2>
		</div>
	</div>
</div>
<div class="container" >
<div class="row">
	<div class="col-sm-10">
			  <form action="" style="margin-left:20%;width:70%;margin-top:20px;" id="form1">
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
				  <button type="submit" style="margin-left:20%" class="btn btn-info">确定</button>
			  </form>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-10">
			<div style="text-align: center;margin-top: 2%">
			  <h4>受众关注标签分析</h4>
				</div>
			</div>
		</div>
	<div class="row">
		<div class="col-sm-10">
		  <div style="height:200px;">
			此处插入可视化图片
		  </div>
			</div>
		</div>
	<div class="row">
		<div class="col-sm-10">
			<div style="text-align: center;margin-top:50px;">
			  <h4>精彩片段生成</h4>
				</div>
			</div>
		<div class="row">
			<div class="col-sm-10">
			  <div style="height:200px;">
			    此处插入可视化图片
			  </div>
			</div>
			</div>
		<div class="row">
			<div class="col-sm-offset-4 col-sm-8">
				<button type="submit" class="btn btn-info btn-lg">保存</button>
			</div>
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
</body>
</html>