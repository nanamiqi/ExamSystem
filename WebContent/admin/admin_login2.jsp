<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="exam-login  row vertical-center ">		
			<div class="signin-head"><img src="images/test/earth.png" height="125" width="125" alt="" class="img-circle"></div>
			<form class="form-signin" role="form" action="login/teacher" method="post">
				
					<input style="border-radius:5px" type="text" class="form-control" name="t_username" placeholder="账号" required autofocus/>
					<input style="border-radius:5px" type="password" class="form-control" name="t_pwd" placeholder="密码" required/>
					<input style="display:none" type="type" name="t_manager" value="1"/>
				
					<button style="border-radius:5px;background:#A3C16A" type="submit" class="btn btn-lg btn-warning btn-block" >登录</button>
				
			</form>
		</div>
	</div>
</body>
</html>
	