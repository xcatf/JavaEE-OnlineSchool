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

<body>
	<div class="row">
		<div class="col-lg-12">
			<ul class="breadcrumb wk-breadcrumb">
				<li>杏林网校</li>
				<li>课程区</li>
				<li>课程视频管理</li>
			</ul>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default wk-panel wk-table-tools-panel">
				<div class="panel-body">
					<button id="deleteBtn" type="button"
						class="btn btn-default wk-tool-btn">删除</button>
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
							<th>视频名</th>
							<th>所需杏林币</th>
							<th>所属课程</th>
							<th>上传时间</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${videos}" var="var">
							<tr>
								<td><input id="grid_${var.id}" name="workerRadio" type="radio"
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

	<div class="modal fade" tabindex="-1" role="dialog" id="deleteConfirm">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header wk-modal-header">
					<button class="close" type="button" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4>系统提示</h4>
				</div>
				<div class="modal-body">您确定要删除这些记录？</div>
				<div class="modal-footer wk-modal-footer">
					<button id="deleteBtnOK" type="submit"
						class="btn btn-default wk-btn" data-dismiss="modal">确定</button>
					<button type="button" class="btn btn-default wk-tool-btn"
						data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>

	<script>
		$("#deleteBtn").on("click", function() {
			var id = "";
			$(":radio").each(function() {
				if ($(this).is(":checked")) {
					id = $(this).attr("id").substr(5, $(this).attr("id").length);
				}
			});
			if (id != "") {
				$("#deleteConfirm").modal();
				$("#deleteBtnOK").on("click", function() {
					location.href = "<%=basePath%>deleteCourseVideo/" + id + ".html";
				});
			}
		});
		$("#videoBtn").on("click", function() {
			var id = "";
			$(":radio").each(function() {
				if ($(this).is(":checked")) {
					id = $(this).attr("id").substr(5, $(this).attr("id").length);
				}
			});
	
			if (id != "") {
				location.href = "<%=basePath%>watchVideo/" + id + ".html";
			}
		});
	</script>
</body>
</html>