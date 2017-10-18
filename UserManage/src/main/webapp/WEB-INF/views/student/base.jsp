<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-inverse mynav">
				<div class="navbar-header">
					 <span class="navbar-brand">学生</span>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							 <a href="index">首页</a>
						</li>
						<li>
							 <a href="myProject">我的项目</a>
						</li>
						<li>
							 <a href="projectApplication">项目申请</a>
						</li>
						<li>
							 <a href="#">所有批次</a>
						</li>
						
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							 <a>${sessionScope.student.studentname}</a>
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
