<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>项目</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>		
	</head>
<body>
    <%@include file="base.jsp" %>
	<div class="container">
	    <div class="row clearfix">
		<div class="col-md-12 column">
		<table class="table table-striped">
		  <tr>
		  	<th>编号</th>
		  	<th>项目名</th>
		  	<th>指导老师</th>
		  	<th>负责人</th>
		  	<th>项目级别</th>
		  	<th>类型</th>
		  	<th>状态</th>
		  	<th>申请评分</th>
		  	<th>结项评分</th>
		  	<th>审核老师</th>
		  	<th>审核</th>
		  	<th>详情</th>
		  </tr>
		  <c:if test="${projectList==null}">
			<h2>没有项目</h2>
		  </c:if>
		  <c:if test="${projectList!=null}">
			<c:forEach items="${projectList}" var="project">
			  <tr>
			  	<td>${project.projectId}</td>
			  	<td>${project.projectName}</td>
			  	<td>${project.teacherName}</td>
			  	<td>${project.leadingName}</td>
			  	<td>
			  		<c:if test="${project.projectLevel==0}">
			  			国家级
			  	    </c:if>
			  	    <c:if test="${project.projectLevel==1}">
			  			北京市级
			  	    </c:if>
			  	</td>
			  	<td>	
			  		<c:if test="${project.projectType==0}">
			  			创新项目
			  	    </c:if>
			  	    <c:if test="${project.projectType==1}">
			  			创业项目
			  	    </c:if>
				</td>
			  	<td>
			  		<c:if test="${project.projectState==-1}">
			  			结项失败
			  	    </c:if>
			  	    <c:if test="${project.projectState==0}">
			  			申请失败
			  	    </c:if>
			  	    <c:if test="${project.projectState==1}">
			  			申请中
			  	    </c:if>
			  	    <c:if test="${project.projectState==2}">
			  			申请完成
			  	    </c:if>
			  	    <c:if test="${project.projectState==3}">
			  			项目中期
			  	    </c:if>
			  	    <c:if test="${project.projectState==4}">
			  			准备结项
			  	    </c:if>
			  	     <c:if test="${project.projectState==5}">
			  			已结项
			  	    </c:if>
				</td>
			  	<c:if test="${project.projectExpert1==null || project.projectExpert2==null || project.projectExpert3==null}">
			  		<td></td>
			  	</c:if>
			  		<c:if test="${project.projectExpert1!=null || project.projectExpert2!=null || project.projectExpert3!=null}">
			  	<td>${(project.firstGrade1+project.firstGrade2+project.firstGrade3)/3}</td>
			  	</c:if>
			  	<td>${(project.secondGrade1+project.secondGrade2+project.secondGrade3)/3}</td>
			  	<!-- 审核老师一栏 -->
			  	<c:if test="${project.projectExpert1==null || project.projectExpert2==null || project.projectExpert3==null}">
			  	   <td>
			  	    <form action="expert/${project.projectId}" method="post">                             
						<select name="expert1">
							<c:forEach items="${expert}" var="e">
								<option value="${e.id}">${e.teacherName}</option>
							</c:forEach>
							</select>
		                                                    
							<select name="expert2">
							<c:forEach items="${expert}" var="e">
								<option value="${e.id}">${e.teacherName}</option>
							</c:forEach>
							</select>
							                               
							<select name="expert3">
							<c:forEach items="${expert}" var="e">
								<option value="${e.id}">${e.teacherName}</option>
							</c:forEach>
						</select>
					    <!-- ---------------需要JS判断一下三个审核老师是否都选了，而且不可以一样---------------->
		                <input type="submit" value="确定"/> 
				    </form>
				   </td>
			    </c:if>
			    <!-- 分配了审核老师 -->
			   
			    <c:if test="${project.projectExpert1!=null}">
				     <td>${project.expertName}</td>
				</c:if>
			
				<!-- 审核一栏 -->
				<c:if test="${project.projectState==1}">
					<!-- 需要评分但是没有评分 -->
					<c:if test="${project.projectState==1&&(project.firstGrade1==null||project.firstGrade2==null||project.firstGrade3==null)}">
						<td>评分未完成</td>
					</c:if>
					<!-- 评分完成需要管理员通过 -->
					<c:if test="${project.projectState==1&&project.firstGrade1!=null&&project.firstGrade2!=null&&project.firstGrade3!=null}">
						<td><a href="projectPass/${project.projectId}"><button>申请通过</button></a></td>
					</c:if>
				</c:if>
				<!-- 不需要通过，已通过或未通过 -->
			    <c:if test="${project.projectState!=1 && project.projectState!=4}">
					<td></td>
				</c:if>
				<c:if test="${project.projectState==4&&(project.secondGrade1==null||project.secondGrade2==null||project.secondGrade3==null)}">
					<td>评分未完成</td>
				</c:if>
				<c:if test="${project.projectState==4&&project.secondGrade1!=null&&project.secondGrade2!=null&&project.secondGrade3!=null}">
					<td><a href="knot/${project.projectId}"><button>结项通过</button></a></td>
				</c:if>
				<td>详情</td>
			 </tr>
			 </c:forEach>
		</c:if>
		</table>
		</div>
		</div>
	</div>
</body>
</html>