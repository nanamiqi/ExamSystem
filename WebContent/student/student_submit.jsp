<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上机考试管理系统</title>
</head>
<body>
	<jsp:include page="student_head.jsp"></jsp:include>
	<div class="container">
		<h4>
			<strong>已上传文件列表</strong>
		</h4>
		<table class="table table-bordered" style="margin-top: 10px">
			<tr>
				<th class="col-md-4">文件名</th>
				<th class="col-md-4">文件大小</th>
				<th class="col-md-4">上传时间</th>
			</tr>
			<tbody id="tbody"></tbody>
		</table>
		<h4>
			<strong>答案上传</strong>
		</h4>
		<form class="form-inline" role="form" name="file"
			action="../saveAnswer" onsubmit="return saveExam()"
			enctype="multipart/form-data" method="post"
			style="margin-top: 12px; font-size: 18px">
			<input class="btn btn-default" type="file" id="paper" name="paper"
				value="浏览..." style="background: white" />
			<button type="submit" style="margin-top: 10px;" class="btn btn-info">上传</button>
		</form>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		$.post("../getAllInfo", function(data) {
			var result = "";
			for (var i = 0; i < data.length; i++) {
				result+="<tr>"
				result+="<td>"+data[i].file_name +"</td>";
				result+="<td>"+data[i].file_size +"</td>";
				result+="<td>"+data[i].times +"</td>";
				result+="</tr>";
			}
			$("#tbody").html(result);
		});
	});
	function saveExam() {
		if ($("input[name='file']").val().length == 0) {
			alert("请选择文件");
			return false;
		} else {
			return true;
		}
	}
</script>
</html>