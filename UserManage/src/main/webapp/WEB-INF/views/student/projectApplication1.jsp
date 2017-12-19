<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.wq.StudentProject"%>
<%@page import="com.wq.ProjectBatch"%>
<html>
	<head>
		<title>项目申请</title>
		<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
		<script src="/UserManage/public/js/bootstrapDatepickr-1.0.0.min.js"></script>
    	<link href="/UserManage/public/css/bootstrapDatepickr-1.0.0.css" rel="stylesheet">
	</head>
	<style>
		.mytable{
		    padding-top:30px;
		    padding-bottom:30px;
			background-color:#f5f5f5;
		}
		.form-horizontal .control-label {
			padding:0px 0px;
			text-align: left;
		}
	</style>
	<script>
		$(document).ready(function() {
			$("#calendar").bootstrapDatepickr({date_format: "Y-m-d"});
			$("#calendar1").bootstrapDatepickr({date_format: "Y-m-d"});
			$("#calendar2").bootstrapDatepickr({date_format: "Y-m-d"});
		});
	</script>
	<body>
		<%@include file="base.jsp" %>
		<div class="container">

	<div class="row ">
		<div class="col-md-12 ">
			<form class="form-horizontal" role="form" id="apply-form" action="projectApplication" method="post">
				<div class="form-group">
					<div class="col-sm-3">
						<label control-label">年份：</label> <br>
						<select class="form-control" name="projectDate">
							<c:forEach items="${batch}" var="b">
								<option value="${b.year}">${b.year}</option>
							</c:forEach>
				    	</select>
			    	</div>
			    	<div class="col-sm-3">
						<label control-label">项目状态：</label> <br>
						<select name="projectState" class="form-control" readonly="readonly">
							<option value="<%=StudentProject.WAIT_PASS%>"><%=StudentProject.allState[2]%></option>
				    	</select>
				    </div>
				    <div class="col-sm-3">
						<label class="control-label">项目类型：</label><br>
						<select name="projectType" class="form-control">
							<option value="<%=StudentProject.NEW_IDEA%>"><%=StudentProject.allType[0]%></option>
							<option value="<%=StudentProject.OPEN_SHOP%>"><%=StudentProject.allType[1]%></option>
						</select>
					</div>
					<div class="col-sm-3">
						<label class="control-label">项目级别：</label>
						<select name="projectLevel" class="form-control">
							<c:forEach items="${batch}" var="b">
								<option value="${b.level}">${b.level}</option>
							</c:forEach>
				    	</select>
				    	<span>1:国家级</span><br><span>2:北京市级</span>
	    			</div>
		    	</div>
				<div class="form-group">
					<div class="col-sm-6">
						<label  class=" control-label">项目名称</label>
						<input type="text" class="form-control" name="projectName" />
					</div>
					
					<div class="col-sm-6">
						<label  class=" control-label">填表日期</label>
						<input type="date" id="calendar" placeholder="请选择日期" class="form-control" name="fillDate">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-6">
						<label  class=" control-label">申请经费</label>
						<input type="text" class="form-control" name="projectFund" />
					</div>
					
					<div class="col-sm-3">
						<label  class="control-label">开始时间</label>
						<input type="date" id="calendar1" placeholder="请选择日期" class="form-control" name="beginDate">
					</div>

					<div class="col-sm-3">
						<label  class="control-label">结束时间</label>
						<input type="date" id="calendar2" placeholder="请选择日期" class="form-control" name="endDate">
					</div>
				</div>
				<h3>项目负责人</h3>
				<div class="form-group">
					<div class="col-sm-2">
						<label  class="control-label">姓名</label>
						<input type="text" class="form-control" name="leadingName" />
					</div>
					<div class="col-sm-2">
						<label  class="control-label">学号</label>
						<input type="text" class="form-control" name="leadingNum" />
					</div>
					
					<div class="col-sm-1">
						<label  class="control-label">年级</label>
						<input type="text" class="form-control" name="leadingGrade" />
					</div>
					
					<div class="col-sm-3">
						<label  class=" control-label">所在院系、专业</label>
						<input type="text" class="form-control" name="leadingMajor" />
					</div>
					
					<div class="col-sm-2">
						<label  class=" control-label">联系电话</label>
						<input type="text" class="form-control" name="leadingPhone" />
					</div>
					
					<div class="col-sm-2">
						<label  class=" control-label">E-mail</label>
						<input type="email" class="form-control" name="leadingEmail" />
					</div>
				</div>
		
				<h3>项目成员</h3>
				<div class="form-group">
					
					<div class="col-sm-2">
						<label  class="control-label">姓名</label>
						<input type="text" class="form-control" name="studentName1" />
					</div>
					<div class="col-sm-2">
						<label  class="control-label">学号</label>
						<input type="text" class="form-control" name="studentNum1" />
					</div>
					
					<div class="col-sm-1">
						<label  class="control-label">年级</label>
						<input type="text" class="form-control" name="grade1" />
					</div>
					
					<div class="col-sm-3">
						<label  class=" control-label">所在院系、专业</label>
						<input type="text" class="form-control" name="major1" />
					</div>
					
					<div class="col-sm-2">
						<label  class=" control-label">联系电话</label>
						<input type="text" class="form-control" name="studentPhone1" />
					</div>
					
					<div class="col-sm-2">
						<label  class=" control-label">E-mail</label>
						<input type="email" class="form-control" name="studentEmail1" />
					</div>
				</div>

				<div class="form-group">
					
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentName2" />
					</div>
					
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentNum2" />
					</div>
					
					<div class="col-sm-1">
						<input type="text" class="form-control" name="grade2" />
					</div>
					
					<div class="col-sm-3">
						<input type="text" class="form-control" name="major2" />
					</div>
					
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentPhone2" />
					</div>
					
					<div class="col-sm-2">
						<input type="email" class="form-control" name="studentEmail2" />
					</div>
				</div>

				<div class="form-group">
						
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentName3" />
					</div>
					
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentNum3" />
					</div>
					
					<div class="col-sm-1">
						<input type="text" class="form-control" name="grade3" />
					</div>
					
					<div class="col-sm-3">
						<input type="text" class="form-control" name="major3" />
					</div>
					
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentPhone3" />
					</div>
					
					<div class="col-sm-2">
						<input type="email" class="form-control" name="studentEmail3" />
					</div>
				</div>

				<div class="form-group">
						
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentName4" />
					</div>
					
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentNum4" />
					</div>
					
					<div class="col-sm-1">
						<input type="text" class="form-control" name="grade4" />
					</div>
					
					<div class="col-sm-3">
						<input type="text" class="form-control" name="major4" />
					</div>
					
					<div class="col-sm-2">
						<input type="text" class="form-control" name="studentPhone4" />
					</div>
					
					<div class="col-sm-2">
						<input type="email" class="form-control" name="studentEmail4" />
					</div>
				</div>


				<h3>导师</h3>
				<div class="form-group">
					
					<div class="col-sm-2">
						<label  class="control-label">姓名</label>
						<input type="text" class="form-control" name="teacherName" />
					</div>
					
					<div class="col-sm-2">
						<label  class="control-label">工号</label>
						<input type="text" class="form-control" name="teacherNum" />
					</div>
					
					<div class="col-sm-2">
						<label  class=" control-label">职务/职称</label>
						<input type="text" class="form-control" name="job" />
					</div>
					
					<div class="col-sm-3">
						<label  class=" control-label">联系电话</label>
						<input type="text" class="form-control" name="teacherPhone" />
					</div>
					
					<div class="col-sm-3">
						<label  class=" control-label">E-mail</label>
						<input type="email" class="form-control" name="teacherEmail" />
					</div>
				</div>

				<div class="col-sm-12">
					<h4>一.申请理由</h4>
					<textarea cols="50" rows="10" class="form-control" name="applicationReason" form="apply-form"></textarea> 
				</div>

				<div class="col-sm-12">
					<h4>二.项目方案（不少于1000字）</h4>
					<textarea cols="50" rows="20" class="form-control" name="projectMethod" form="apply-form"></textarea>
				</div>

				<div class="col-sm-12">
					<h4>三.预期成果</h4>
					<textarea cols="50" rows="15" class="form-control" name="exceptAchievement" form="apply-form"></textarea>
				</div>

				<div class="col-sm-12">
					<h4>四.经费预算</h4>
					<textarea cols="50" rows="6" class="form-control" name="fundBudget" form="apply-form"></textarea>
				</div>

				<div class="form-group">
				
					<div class="col-sm-12">
					<br>
						 <button type="submit" class="btn btn-lg btn-block btn-primary">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	</body>
</html>