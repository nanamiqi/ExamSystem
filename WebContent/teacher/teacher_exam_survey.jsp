<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>上机考试系统</title>
</head>
<body>
<jsp:include page="teacher_index.jsp"></jsp:include>
<div class="container">
    <div class="col-md-12" style="padding-left: 5px; padding-right: 5px;">
        <div class="alert navbar-inverse "
             style="background-color: #eeeeee; height: 200px; margin-top: 20px;">
            <strong style="margin-left: 20px; font-size: 18px"> <span>考试
				</span>
                <!--  得到该场考试的信息--> 进行情况：
            </strong>

            <p style="margin-left: 20px; margin-top: 12px;">
                参加考试的学生总数:<span id="stu_number"></span>
                <!-- 得到参加的总人数 -->
            </p>
            <p style="margin-left: 20px; margin-top: 12px;">
                已登录学生数量:<span id="stu_login"></span>
                <!-- 得到已经登录的总人数 -->
                ， 未登录的学生数量：<span id="stu_nologin"></span>
                <!-- 得到未登录的总人数，两者相减 -->
            </p>
            <p style="margin-left: 20px; margin-top: 12px;">
                已登录学生中，提交文件学生数量:<span id="stu_submit"></span>
                <!-- 得到提交文件的学生数量-->
                ， 未提交文件学生的数量：<span id="stu_nosubmit"></span>
                <!-- 两者相减 -->
            </p>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        $.post("../getStartExamInfo", function (data) {
            var stuNumber = 0;
            var stuLogin = 0;
            var stuSubmit = 0;
            if (data != null && data!=="") {
                stuNumber = data.length;
                for (var i = 0; i < stuNumber; i++) {
                    if (data[i].stu_ip != null) {
                        stuLogin++;
                    }
                    if (data[i].stu_submit != null && data[i].stu_submit !== 0) {
                        stuSubmit++;
                    }
                }
            }
            $("#stu_number").html(stuNumber);
            $("#stu_login").html(stuLogin);
            $("#stu_nologin").html(stuNumber - stuLogin);
            $("#stu_submit").html(stuSubmit);
            $("#stu_nosubmit").html(stuNumber - stuSubmit);
        })
    })
</script>
</html>