<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>学生主页</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
</head>
<body>
	<%@include file="base.jsp" %>
	<div>
		<h1>学生${sessionScope.student.studentname}的主页</h1>		
	</div>
	<div>
		<a href="projectApplication"><button>项目申请</button></a>
		<a href="myProject"><button>查看我的项目</button></a>
		<a href="logout">退出账号</a>
	</div>
	<!-- 
	<form action="find" method="post">
		<p>搜索用户 ：</p>
		<input type="text" id="keyword" name="t" onkeyup="getMoreContents()"/>
		<input type="submit" value="submit">
		<div id="popDiv">
			<table id="content_table" bgcolor="#FFFAFA" border="0" cellspacing="0" cellpadding="0">
				<tbody id="content_table_body">
				</tbody>
			</table>
		</div>
	</form>	
	<script type="text/javascript">
		function getMoreContents(){
			alert('get')
			var content = document.getElementById("keyword").value;
			if(content==""){
				return;
			}
			var url ="ajaxfind?keyword="+content;
			xmlHttp = createXmlHttp();
			xmlHttp.open("GET",url,true);
			xmlHttp.onreadystatechange = callback();
			xmlHttp.send(null);
		}
		function createXmlHttp(){
			
			var xmlHttp;
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest();
			}
			if(window.ActiveXObject){
				xmlHttp = new ActiveXObject("Microsoft.XMHTTP");
				if(!xmlHttp){
					xmlHttp = new ActiveXObject("Msxml2.XMHTTP");
				}
			}
			return xmlHttp;
		}
		function callback(){ 
			alert('callback');

			if(xmlHttp.readyState==4){
				//服务器响应成功
				if(xmlHttp.status==200){
					var result = xmlHttp.reponseText;
					
					var json = eval("("+result+")");	
					setContent(json);
				}
			}
		}
		function setContent(contents){
			alert('set')
			var size = contents.length;
			for(var i = 0;i<size;i++){
				var nextNode = contents[i];
				var tr = document.createElement("tr");
				var td = document.createElement("td");
				td.seAttribute("bgcolor","#FFFAFA");
				td.onmouseover=function(){
					this.className='mouseOver';
				};
				td.onmouseout=function(){
					this.className='mouseOut';
				};
				td.onclick=function(){
					
				};
				var text = document.createTextNode(nextNode);
				td.appendChild(text);
				tr.appendChild(td);
				document.getElementById("content_table_body").appendChild(tr)
			}
		}
	</script>-->
</body>
</html>