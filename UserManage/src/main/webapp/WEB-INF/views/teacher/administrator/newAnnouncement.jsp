<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;utf-8">
	<title>新增公告</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
</head>
<body>
	<%@include file="../base.jsp" %>
	<div class="container mytable">
	    <div class="row clearfix">
	    <div class="col-md-2 column">
	    </div>
		<div class="col-md-8 column">
			<form class="form-horizontal" action="newAnnouncement" method="post">
				<div class="form-group">
					<label class="col-sm-2 control-label">公告内容</label>
				    <div class="col-sm-10">
					<textarea class="form-control" rows="10"  name="text"></textarea>
			    	</div>
		    	</div>
		    	
		    	<input type="submit" value="提交">
			</form>	
		</div>
		<div class="col-md-2 column">
	    </div>
		</div>
	</div> 
</body>
</html>