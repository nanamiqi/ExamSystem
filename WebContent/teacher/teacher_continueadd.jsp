<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上机考试系统</title>

</head>
<body>
<%
		if(session.getAttribute("info")!=null){
			out.print(session.getAttribute("info"));
			session.removeAttribute("info");
		}
	%>
	<jsp:include page="teacher_index.jsp"></jsp:include>
	<div class="container alert navbar-inverse">
		<strong style="color: white; margin-left: 20px; font-size: 15px">完成学生名单的导入和修改后,</strong>
		<a href="teacher_addexam.jsp" class="btn btn-default"><span
			class="glyphicon glyphicon-pencil"></span>返回编辑</a>
	</div>
	<div class="container">
		<div class="alert navbar-inverse"
			style="background-color: #eeeeee; margin-top: 20px">
			<strong style="margin-left: 20px; font-size: 18px">当前科目:<span id="e_name">${param.e_name }</span></strong>
			<strong style="margin-left: 20px; font-size: 18px">添加单个学生</strong>
			<form class="form-inline form-inline1" role="form"
				style="margin-left: 20px; margin-top: 5px;" onsubmit="return add()">
				<div class="form-group">
					<input type="text" class="form-control" style="width: 250px"
						placeholder="学号*" name="stu_id"> <input type="text"
						class="form-control" style="width: 250px" placeholder="姓名*"
						name="stu_name"> <input type="text" class="form-control"
						style="width: 250px" placeholder="班级*" name="stu_class"> <input
						type="submit" class="btn btn-info" value="添加" />
						<input type="text" style="display:none;" name="stu_exam" value="${param.e_name }" />
				</div>
			</form>
		</div>
		<table class="table table-bordered" style="margin-top: 10px">
			<tr>
				<th class="col-md-3">学号</th>
				<th class="col-md-3">姓名</th>
				<th class="col-md-3">班级</th>
			</tr>
			<tbody id="tbody"></tbody>
		</table>
		<div class="alert navbar-inverse"
			style="background-color: #eeeeee; margin-top: 20px">
			<strong style="margin-left: 20px; font-size: 18px">批量导入学生名单</strong>
			<form  action="../saveExcel" onsubmit="return saveExcel()" enctype="multipart/form-data"
				class="form-inline" method="post" role="form" style="margin-left: 20px; margin-top: 12px;">
				<input type="file" name="file" />
				<input style="display:none;" type="text" name="e_name" value="${param.e_name }">
				<button type="submit" style="margin-top: 5px" class="btn btn-info">导入</button>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">

	$(function() {
		retHtml();
	})
	
	function saveExcel() {
		if ($("input[name='file']").val().length == 0) {
			alert("请选择文件");
			return false;
		} 
		return true;
	}
	
	function add(){
		$.post("../addStudent",$('.form-inline1').serialize(),function(){
			retHtml();
		})
		alert("添加成功！");
		return false;
	}
	
	function retHtml(){
		$.post("../getExamStudents",{"e_name":$("#e_name").html()}, function(data) {
			var result = "";
			for (var i = 0; i < data.length; i++) {
				result+="<tr>"
				result+="<td>"+data[i].stu_id +"</td>";
				result+="<td>"+data[i].stu_name +"</td>";
				result+="<td>"+data[i].stu_class +"</td>";
				result+="</tr>";
			}
			$("#tbody").html(result);
		});
	}
</script>
</html>