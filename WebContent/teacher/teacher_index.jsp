<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上机考试系统</title>

<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/jquery.min.js" type="text/javascript"></script>
<script src="../js/bootstrap.min.js" type="text/javascript"></script>
</head>

<style type="text/css">
body {
	background: #f8f6e9;
}
</style>
<%
	if(session.getAttribute("info")!=null){
		out.print(session.getAttribute("info"));
		session.removeAttribute("info");
	}
%>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-collapse collapse">
			<div class="container">
				<ul class="nav navbar-nav">
					<li style="font-size: 18px; text-color: #ffffff;"><a>上机考试系统</a></li>
					<li><a href="teacher_about.jsp">首页 </a></li>
					<li><a href="teacher_exam_before.jsp">考前操作 </a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">考中管理<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="../goStudentInfo?id=1">考试概况</a></li>
							<li><a href="../goStudentInfo?id=2">学生信息</a></li>
							<li><a href="../goStudentInfo?id=3">解除锁定</a></li>
							<li><a href="../goStudentInfo?id=4">通知管理</a></li>
						</ul></li>
					<li><a href="teacher_exam_after.jsp">考后操作 </a></li>
				</ul>
				<ul class="nav navbar-nav" style="float: right">
					<li><a>欢迎您，${teacher.t_username }</a></li>
					<li><a href="" data-toggle="modal" data-target="#myModal">
							修改口令 </a></li>
					<li><a href="../exit">退出 </a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container" style="margin-top: 50px">
		<div style="float: left; margin-top: 20px">
			<img src="../images/test/teaching.jpg" width="90" height="90"/>
		</div>
		<div>
			<hr
				style="background-color: #C3D889; height: 3px; border: none; margin-top: 40px" />
		</div>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 300px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">
						<b>修改口令</b>
					</h4>
				</div>
				<form action="../exitTeacher" method="post">
					<div class="alert navbar-inverse "
						style="background-color: #eeeeee; height: auto; margin-top: 20px;">
						<input style="width: 250px" name="oldPwd" type="password"
							placeholder="原口令" class="form-control"> <br /> <input
							type="password" style="width: 250px" placeholder="新口令"
							name="newPwd1" class="form-control"> <br /> <input
							type="password" style="width: 250px" placeholder="重输新口令"
							name="newPwd2" class="form-control"> <br />
						<button type="submit" style="width: 250px" class="btn btn-primary">
							修改</button>
					</div>
				</form>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

</body>
</html>