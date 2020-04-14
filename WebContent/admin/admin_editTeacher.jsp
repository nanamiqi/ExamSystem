<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上机考试管理系统</title>
<style type="text/css">
.inputclass {
	height: 30px;
	width: 350px;
}
tr {
	line-height: 50px;
}
</style>
</head>
<body>
	<jsp:include page="admin_head.jsp"></jsp:include>
	<div class="container">
		<h3><strong>修改教师账号</strong></h3>
		<form action="../editTeacherInfo" method="post">
		<table style="margin-left: 50px">
			<tr>
				<td align="right"><b>用户名:<b></td>
				<td style="padding-left: 20px"><input readonly="readonly" type="text"  name="t_username"
					class="form-control inputclass" value="${teacherinfo.t_username }"></td>
			</tr>
			<tr>
				<td align="right"><b>密码:<b></td>
				<td style="padding-left: 20px"><input type="text" name="t_pwd"
					class="form-control inputclass"></td>
				<td align="right"><b>&nbsp;如不需要设定密码请留空<b></td>
			</tr>
			<tr>
				<td align="right"><b>全名:<b></td>
				<td style="padding-left: 20px"><input type="text" 
					class="form-control inputclass" name="t_name" value="${teacherinfo.t_name }"></td>
			</tr>
			<tr>
				<td></td>
				<td style="padding-left: 20px"><label style="font-size: 15px">
						<input type="checkbox" name="checkbox" <c:if test="${teacherinfo.t_manager==1 }">checked </c:if>>管理员
						<input type="text" name="t_manager" style="display:none;" value="${teacherinfo.t_manager }">
				</label></td>
			</tr>
			<tr>
				<td></td>
				<td style="padding-left: 20px"><button class="btn btn-info"  type="submit">修改</button></td>
			</tr>
		</table>
		</form>
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
	})
</script>
</html>