<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<div class="container-fluid">
		<div class="row-fluid">
			<c:forEach items="${announcementList}" var="announcement">
				<div class="col-md-12 column">
					<p>
						${announcement.text}
					</p>
					<p>创建人：${announcement.announcer} 时间：${announcement.createDate}</p>
				</div>
			</c:forEach>
		</div>	
	    </div>
	</div>

</body>
</html>