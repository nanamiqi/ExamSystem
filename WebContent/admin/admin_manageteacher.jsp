<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上机考试系统</title>

</head>
<body>
	<jsp:include page="admin_head.jsp"></jsp:include>
	<div class="container">
		<div class="alert navbar-inverse"
			style="background-color: #eeeeee; margin-top: 20px">
			<strong style="margin-left: 20px; font-size: 18px">添加教师</strong>
			<form class="form-inline" role="form"
				style="margin-left: 20px; margin-top: 5px;" onsubmit="return add()">
				<div class="form-group">
					<input type="text" class="form-control" style="width: 250px"
						placeholder="用户名*" name="t_username">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" style="width: 250px"
						placeholder="初始口令*" name="t_pwd">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" style="width: 250px"
						placeholder="真实姓名" name="t_name">
				</div>
				<input type="text" name="t_manager" value="0" style="display: none">
				<div class="checkbox">
					<label style="font-size: 15px"> <input type="checkbox"
						name="checkbox">管理员
					</label>
				</div>
				<button type="submit" class="btn btn-info">添加</button>
			</form>
		</div>
		<table class="table table-bordered" style="margin-top: 10px">
			<tr>
				<th class="col-md-3">用户名</th>
				<th class="col-md-3">真实姓名</th>
				<th class="col-md-3">是否为管理员</th>
				<th class="col-md-3"></th>
			</tr>
			<tbody id="tbody"></tbody>
		</table>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		$("input[name='checkbox']").click(function() {
			if ($("input[name='checkbox']:checked").val() == "on") {
				$("input[name='t_manager']").val(1);
			} else {
				$("input[name='t_manager']").val(0);
			}
		})
		retHtml();
	})
	
	function deleteTeacher(name){
		var a = confirm("确定删除"+name+"的信息?");

		if (a == true) {
			$.post("../deleteTeacher", {'name':name}, function() {
				retHtml();
			})
			return true;
		} else {
			return false;
		}
		
	}
	
	function add(){
		$.post("../addTeacher",$('.form-inline').serialize(), function() {
			retHtml();
			alert("添加成功！");
		})
		return false;
	}
	
	function retHtml() {
		$.post("../getAllTeacher", function(data) {
			var result = "";
			for (var i = 0; i < data.length; i++) {
				result += "<tr>";
				result += "<td>" + data[i].t_username + "</td>";
				result += "<td>" + data[i].t_name + "</td><td>";
				if (data[i].t_manager==1)
				result += "<span class='glyphicon glyphicon-ok'></span>";
				result += "</td><td>";
				result += "<a href='../goEditTeacher?t_username=" + data[i].t_username + "&t_name="
						+ data[i].t_name + "&t_manager="+ data[i].t_manager+"'><span class='glyphicon glyphicon-edit' title='编辑'></span></a>";
				result += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:;' onclick='deleteTeacher("+'"'+data[i].t_username+'"'+")'><span class='glyphicon glyphicon-trash' title='删除'></span></a>";
				result += "</td></tr>";
			}
			$("#tbody").html(result);
		});
		return false;
	}
</script>
</html>