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
	<jsp:include page="admin_head.jsp"></jsp:include>
	<div class="container">
		<div class="col-md-4" style="padding-left: 5px; padding-right: 5px;">
			<div class="alert navbar-inverse "
				style="background-color: #eeeeee; height: 350px; margin-top: 20px;">
				<strong style="margin-left: 20px; font-size: 18px">教师管理</strong>
				<p>可以对教师用户进行增删改查操作，并可以指定特定教师作为系统管理员</p>
				<p>系统可以有多个管理员</p>
				<p>
					如果没有任何一个教师具有管理员身份，则默认管理员登录信息有效
				</p>
			</div>
		</div>
		<div class="col-md-4" style="padding-left: 5px; padding-right: 5px;">
			<div class="alert navbar-inverse "
				style="background-color: #eeeeee; height: 350px; margin-top: 20px">
				<strong style="margin-left: 20px; font-size: 18px">考试清理</strong>
				<p>
					清楚考试的相关数据，包括数据库中的信息，文件系统中的提交文件
				</p>
				<p>
					只有在主考教师已经包下载学生提交文件后才可以进行
				</p>
				<p>
					清理后的考试可以删除 
				</p>
				<p></p>
			</div>
		</div>
		<div class="col-md-4" style="padding-left: 5px; padding-right: 5px;">
			<div class="alert navbar-inverse"
				style="background-color: #eeeeee; height: 350px; margin-top: 20px;">
				<strong style="margin-left: 20px; font-size: 18px">系统配置</strong>
				<p>
					
					设置一些全局性的系统选项，包括后台任务的时间周期，分页查询时的每页记录数，手动开启考试的时间阈值，学生上传文件字数的有限范围等
				</p>
				<p>
					可以指定时候允许主考教师清理和删除考试 
				</p>
			</div>
		</div>
	</div>
</body>
</html>