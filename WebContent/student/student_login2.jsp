<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Insert title here</title>

    <link href="css/signin.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="alert navbar-inverse">
        <strong id="tip" style="color: white; margin-left: 20px; font-size: 20px">
            <%  if(session.getAttribute("notice") != null) {
                    out.print("通知：" + session.getAttribute("notice"));
                } %>
        </strong>
    </div>
    <div class="exam-login row vertical-center">
        <div class="signin-head">
            <img src="images/test/cup.png" width="120" height="120" alt="" class="img-circle">
        </div>
        <form class="form-signin" role="form" action="login/student" method="post">

            <input style="border-radius: 5px" type="text" class="form-control"
                   name="stu_id" placeholder="学号" required autofocus> <input
                style="border-radius: 5px" type="text" class="form-control"
                name="stu_name" placeholder="姓名" required>

            <button style="border-radius: 5px; background: #A3C16A"
                    type="submit" id="loginsubmit" class="btn btn-lg btn-warning btn-block">登录
            </button>

        </form>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        $.get("getStartExam", function (data) {
            if (data == false) {
                $("#loginsubmit").attr("disabled", true);
                $("#tip").html("当前没有进行中的考试，不能登陆！");
            }
        })
    })
</script>
</html>