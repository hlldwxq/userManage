<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>项目详情</title>
</head>
<body>
	<%@include file="base.jsp" %>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul>
				<li>
					项目编号：${project.projectId}
				</li>
				<li>
					项目名称：${project.projectName}
				</li>
				<li>
					指导老师：${project.teacherName}
				</li>
				<li>
					项目负责人：${project.leadingName}
				</li>
				<li>
					项目级别：${project.projectLevel}
				</li>
				<li>
					项目类型：${project.projectType}
				</li>
				<li>
					项目状态：${project.projectState}
				</li>
				<li>
					审核老师：${project.expertName}
				</li>
				<li>
					申请时评分：${project.firstGrade}
				</li>
				<li>
					结项时评分：${project.secondGrade}
				</li>
			</ul>
			<c:if test="${first!=null}"><a>申请书</a></c:if>
			<c:if test="${middle!=null}"><a>中期文件</a></c:if>
			<c:if test="${final!=null}"><a>结项文件</a></c:if>			
			
		</div>
	</div>
</div>

</body>
</html>