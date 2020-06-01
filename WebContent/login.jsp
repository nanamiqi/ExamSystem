<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上机考试系统</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<style type="text/css">
body {
	padding-top: 40px;
	background:#A1BAB2;
}
</style>
</head>
<%  //显示教师发布的考试通知
	if(session.getAttribute("info") != null) {
		out.print(session.getAttribute("info"));
		session.removeAttribute("info");
	}
%>
<body>
	<div class="container">
		<ul id="main_nav" class="nav nav-pills">
			<li class="active"><a href="#student" data-toggle="tab">学生登录</a></li>
			<li><a href="#teacher" data-toggle="tab">教师登录</a></li>
			<li><a href="#admin" data-toggle="tab">管理员登录</a></li>
		</ul>
		<div id="myTabContent" class="tab-content" style="margin-top: 30px">
			<div class="tab-pane fade in active" id="student">
				<jsp:include page="student/student_login2.jsp"></jsp:include>
			</div>
			<div class="tab-pane fade" id="teacher">
				<jsp:include page="teacher/teacher_login2.jsp"></jsp:include>
			</div>
			<div class="tab-pane fade" id="admin">
				<jsp:include page="admin/admin_login2.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>