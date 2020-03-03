<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<base href="<%=basePath%>">
<link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resource/bootstrap/css/bootstrap-theme.min.css">
<script type="text/javascript" src="resource/lib/jquery-3.1.1.js"></script>
<script type="text/javascript"
	src="resource/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resource/css/wukong-ui.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-select.min.css">
<script type="text/javascript"
	src="bootstrap/js/bootstrap-select.min.js"></script>
</head>

<body>
	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb wk-breadcrumb">
				<li>杏林网校</li>
				<li>课程学习</li>
				<li>课程查询</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default  wk-panel">
				<div class="panel-body">
					<form action="<%=basePath%>searchStudentCourseByName.html" method="POST">
						<div class="form-inline">
							<div class="form-group">
								<label for="filePath" class="control-label wk-filed-label">搜索课程名:
								</label>
								<div class="input-group">
									<input required="required" name="courseName" type="text"
										class="form-control wk-normal-input" placeholder="请输入课程名" />
								</div>
								<button type="submit" class="btn btn-default wk-tool-btn">提&nbsp;&nbsp;交</button>
							</div>
						</div>
					</form>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>课程名称</th>
							<th>课程编号</th>
							<th>所属学院</th>
							<th>课程简介</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${courses}" var="var">
							<tr>
								<td>${var.name}</td>
								<td>${var.num}</td>
								<td>${var.collegeName}</td>
								<td>${var.intro}</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
		</div>
	</div>

	<script>

</script>
</body>
</html>