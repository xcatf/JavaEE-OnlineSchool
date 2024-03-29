<%@page import="com.xor.model.CourseVideo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<%
	
%>
<body>
	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb wk-breadcrumb">
				<li>杏林网校</li>
				<li>课程学习</li>
				<li>课程视频学习</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default wk-panel wk-table-tools-panel">
				<div class="panel-body">
					<button id="videoBtn" type="button"
						class="btn btn-default wk-tool-btn">在线观看</button>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default  wk-panel">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>选择</th>
							<th>文件名</th>
							<th>所需杏林币</th>
							<th>所属课程</th>
							<th>上传时间</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${videos}" var="var">
							<tr>
								<td><input id="${var.id}" name="workerRadio" type="radio"
									aria-label="选择" /></td>
								<td>${var.path}</td>
								<td>${var.payCoin }</td>
								<td>${var.courseName}</td>
								<td><fmt:formatDate value="${var.recordTime}"
										pattern="yyyy-MM-dd  HH:mm:ss" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script>
	
		$("#videoBtn").on("click", function() {
			var id = "";
			$(":radio").each(function() {
				if ($(this).is(":checked")) {
					id = $(this).attr("id").substr(0, $(this).attr("id").length);
				}
			});
	
			if (id != "") {
				location.href = "<%=basePath%>studentWatchVideo/" + id + ".html";
			}
		});
	</script>
</body>
</html>