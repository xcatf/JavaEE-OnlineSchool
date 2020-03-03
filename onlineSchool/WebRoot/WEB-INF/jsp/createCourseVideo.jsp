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
<link rel="stylesheet"
	href="resource/bootstrap/css/bootstrap-select.min.css">
<script type="text/javascript"
	src="resource/bootstrap/js/bootstrap-select.min.js"></script>
</head>

<body>
	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb wk-breadcrumb">
				<li>杏林网校</li>
				<li>课程区</li>
				<li>上传课程视频</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default wk-panel ">
				<div class="panel-heading">上传课程视频 Create Data</div>
				<form action="<%=basePath%>/saveCourseVideo.html" method="POST"
					enctype="multipart/form-data">
					<div class="panel-body">
						<div class="row">
							<div class="form-inline">
								<div class="form-group">
									<label class="control-label wk-filed-label">选择课程: </label> <select
										class="selectpicker" name="courseId">
										<c:forEach items="${courses}" var="var">
											<option value="${var.id}">${var.name}</option>
										</c:forEach>
									</select>
								</div>
								<label for="filePath" class="control-label wk-filed-label">所需杏林币:
								</label>
								<div class="input-group">
									<input required="required" name=coin type="text"
										class="form-control wk-normal-input" value="0"
										placeholder="请输入杏林币" />
								</div>
							</div>

							<div class="form-inline">
								<div class="form-group">
									<label for="filePath" class="control-label wk-filed-label">选择视频文件:
									</label>
									<div class="input-group">
										<input required="required" name="file" type="file"
											class="form-control wk-long-2col-input" />
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="panel-footer wk-panel-footer">
						<button type="submit" class="btn btn-default wk-btn">提&nbsp;&nbsp;交</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>