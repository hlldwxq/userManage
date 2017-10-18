<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-inverse mynav">
				<div class="navbar-header">
					<c:if test="${sessionScope.teacher.power==1}">
					    <span class="navbar-brand">管理员</span>
					</c:if>
					<c:if test="${sessionScope.teacher.power==2}">
					    <span class="navbar-brand">教师</span>
					</c:if>
					<c:if test="${sessionScope.teacher.power==3}">
					    <span class="navbar-brand">审核老师</span>
					</c:if>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							 <a href="index">首页</a>
						</li>
						<c:if test="${sessionScope.teacher.power==1}">
							<li><a href="newBatch">创建新批次</a></li>
							<li><a href="1">等待审批的项目</a></li>
							<li><a href="0">所有项目</a></li>
						</c:if>
						<c:if test="${sessionScope.teacher.power!=1}">
							<li><a href="myProject">负责项目</a></li>
						</c:if>
						<c:if test="${sessionScope.teacher.power==3}">
							<li><a href="examine">待审核项目</a></li>
						</c:if>
						<li><a href="allBatch">显示所有批次</a></li>
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							 <a>${sessionScope.teacher.teacherName}</a>
						</li>
						<li>
							<a href="logout">退出</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
</div>
