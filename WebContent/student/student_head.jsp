<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-collapse collapse">
        <div class="container">
            <ul class="nav navbar-nav">
                <li style="font-size: 18px; text-color: #ffffff;"><a>上机考试系统</a></li>
                <li><a href="student_about.jsp"> <span
                        class="glyphicon glyphicon-home"></span>首页
                </a></li>
                <li><a href="student_submit.jsp">查看提交</a></li>
            </ul>
            <ul class="nav navbar-nav" style="float: right">
                <li><a>欢迎您,${student.stu_name }</a></li>
                <li><a href="../exit"> 退出 </a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container" style="margin-top: 50px;">
    <h2 style="color: #2aabd2">
        <img src="../images/test/examing2.jpg" width="100" height="100"/> ${student.stu_name }同学, 上机考试中...
    </h2>
</div>

</body>
</html>