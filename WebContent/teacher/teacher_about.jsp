<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上机考试系统</title>
</head>
<body>

	<jsp:include page="teacher_index.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-4" style="padding-left: 5px; padding-right: 5px;">
				<div class="alert navbar-inverse "
					style="background-color: #eeeeee; height: 350px; margin-top: 20px;">
					<strong style="margin-left: 20px; font-size: 18px">考前操作</strong>
					<p>
						可以新建考试：指定考试名称、开始时间等
					</p>
					<p>
						可以编辑自己创建的、未创建的的考试，除了修改考试信息，还可以：

					</p>
					<p>
						&nbsp&nbsp&nbsp&nbsp
						1.上传试卷
					</p>
					<p>
						&nbsp&nbsp&nbsp&nbsp
						2.学生名单导入
					</p>
					<p>
						&nbsp&nbsp&nbsp&nbsp
						3.开始考试
					</p>
				</div>
			</div>
			<div class="col-md-4" style="padding-left: 5px; padding-right: 5px;">
				<div class="alert navbar-inverse "
					style="background-color: #eeeeee; height: 350px; margin-top: 20px">
					<strong style="margin-left: 20px; font-size: 18px">考中管理</strong>
					<p>
						 可以查看考试情况
					</p>
					<p>
						可以管理学生信息，手工添加个别学生信息
					</p>
					<p>
						可以解除学生登陆锁定
					</p>
					<p>
						 可以添加或删除通知信息
					</p>
					<p></p>
				</div>
			</div>
			<div class="col-md-4" style="padding-left: 5px; padding-right: 5px;">
				<div class="alert navbar-inverse"
					style="background-color: #eeeeee; height: 350px; margin-top: 20px;">
					<strong style="margin-left: 20px; font-size: 18px">考后操作</strong>
					<p>
					 主考教师（考试创建者）可以结束考试
					</p>
					<p>
					主考教师可以打包下载学生的提交文件
					</p>
					<p>
				             教师可以到处提交信息
					</p>
					<p>
					如果管理员设置，只考教师可以清理和删除考试
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>