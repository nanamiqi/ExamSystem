<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <jsp:include page="teacher_index.jsp"></jsp:include>
    <title>上机考试系统</title>
    <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet"
          media="screen">
    <script type="text/javascript">
        $(function () { //设置考试是否自动开始
            $("input[name='checkbox']").click(function () {
                if ($("input[name='checkbox']:checked").val() == "on") {
                    $("input[name='e_autostart']").val(1);
                } else {
                    $("input[name='e_autostart']").val(0);
                }
            })
            getExam();
        })

        function add() { //添加考试
            $.post("../addExam", $('.form-inline').serialize(), function () {
                getExam();
            })
            alert("添加成功！");
            return false;
        }

        function getExam() { //获取考试详细信息列表
            $.post("../getAllExams", function (data) {
                var result = "";
                for (var i = 0; i < data.length; i++) {
                    result += "<tr>"
                    result += "<td>" + data[i].e_name + "</td>";
                    result += "<td>" + data[i].e_starttime + "</td>";
                    result += "<td>" + data[i].e_teacher + "</td>";
                    result += "<td>";
                    if (data[i].e_examination != null) {
                        result += "<span class='glyphicon glyphicon-ok'></span>";
                    }
                    result += "</td>";
                    result += "<td>";
                    if (data[i].e_autostart == 1) {
                        result += "<span class='glyphicon glyphicon-ok'></span>";
                    }
                    result += "</td>";
                    result += "<td>";
                    if (data[i].e_isstart == 1 && data[i].e_isend == 0) {
                        result += "<span class='glyphicon glyphicon-ok'></span>";
                    }
                    result += "</td>";
                    result += "<td>";
                    if (data[i].e_isend == 1) {
                        result += "<span class='glyphicon glyphicon-ok'></span>";
                    }
                    result += "</td>";
                    result += "<td>";
                    if (data[i].e_file == 1) {
                        result += "<span class='glyphicon glyphicon-ok'></span>";
                    }
                    result += "</td>";
                    result += "<td>";
                    if (data[i].e_clear == 1) {
                        result += "<span class='glyphicon glyphicon-ok'></span>";
                    }
                    result += "</td>";
                    result += "<td>";
                    if (data[i].e_isend == 0 && data[i].e_isstart == 1) {
                        result += "<span>考试已开启</span>";
                    }
                    if (data[i].e_isend == 1) {
                        result += "<span>考试已结束</span>";
                    }
                    if (data[i].e_isstart == 0 && data[i].e_isend == 0) {
                        result += "<a href='../goEditExam?e_name=" + data[i].e_name + "&e_starttime=" + data[i].e_starttime + "&e_teacher=" + data[i].e_teacher + "&e_autostart=" + data[i].e_autostart + "&e_isend=" + data[i].e_isend + "&e_file=" + data[i].e_file + "&e_clear=" + data[i].e_clear + "&e_isstart=" + data[i].e_isstart + "&e_examination=" + data[i].e_examination + "' title='编辑考试信息' class='glyphicon glyphicon-edit'></a>";
                    }
                    result += "</td>";
                    result += "</tr>";
                }
                $("#tbody").html(result);
            });
        }
    </script>
</head>

<body style="background-color: #f8f6e9;">
<%
    String exam_start = (String) session.getAttribute("exam_start");
    if (exam_start != null) {
        if (exam_start.equals("true")) {
%>
<script type="text/javascript">
    alert("开启考试成功");
</script>
<%
    session.setAttribute("exam_start", null);
} else {
%>
<script type="text/javascript">
    alert("当前有考试正在进行，开启考试失败");
</script>
<%
            session.setAttribute("exam_start", null);
        }
    }
    StringBuffer sb = new StringBuffer();
    //查询所有考试信息
%>
<div class="container">
    <div class="alert navbar-inverse"
         style="background-color: #eeeeee; margin-top: 20px">
        <strong style="margin-left: 20px; font-size: 18px">添加考试</strong>
        <form class="form-inline" role="form" onsubmit="return add()"
              style="margin-left: 20px; margin-top: 5px;">
            <div class="form-group">
                <input type="text" name="e_name" class="form-control"
                       style="width: 250px; margin-top: 10px;" placeholder="考试名称*">
            </div>
            <div class="form-group" style="margin-top: 10px">
                <div class="input-group date form_datetime"
                     data-link-field="dtp_input2">
                    <input name="e_starttime" placeholder="考试时间*" class="form-control"
                           type="text" readonly
                           style="width: 250px; background-color: #fff;"> <span
                        class="input-group-addon"><span
                        class="glyphicon glyphicon-remove"></span></span> <span
                        class="input-group-addon"><span
                        class="glyphicon glyphicon-calendar"></span></span>
                </div>
            </div>


            <div class="checkbox" style="margin-top: 10px">

                <input type="text" name="e_autostart" value="0"
                       style="display: none"> <label style="font-size: 15px">
                <input type="checkbox" name="checkbox">自动开始
            </label>
            </div>
            <button
                    style="margin-top: 10px; margin-left: 120px; height: 25px; background: #39B3D7; border: none; color: white; border-radius: 5px"
                    type="submit">添加
            </button>
        </form>
    </div>
    <table class="table table-bordered" style="margin-top: 10px">
        <tr>
            <th class="col-md-2">考试名称</th>
            <th class="col-md-2">考试时间</th>
            <th class="col-md-1">创建人</th>
            <th class="col-md-1">上传试卷</th>
            <th class="col-md-1">自动开始</th>
            <th class="col-md-1">进行中</th>
            <th class="col-md-1">已结束</th>
            <th class="col-md-1">已归档</th>
            <th class="col-md-1">已清理</th>
            <th class="col-md-1"></th>
        </tr>
        <tbody id="tbody"></tbody>
    </table>
</div>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.js"
        charset="UTF-8"></script>
<script type="text/javascript">
    $.fn.datetimepicker.dates['zh-CN'] = {
        days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
        daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
        daysMin: ["日", "一", "二", "三", "四", "五", "六", "日"],
        months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月",
            "十月", "十一月", "十二月"],
        monthsShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月",
            "9月", "10月", "11月", "12月"],
        today: "今天",
        suffix: [],
        meridiem: ["上午", "下午"]
    };

    $(".form_datetime").datetimepicker({
        format: 'yyyy-mm-dd hh:ii:ss',
        language: 'zh-CN',
        autoclose: true,
        todayBtn: true,
        startDate: "2016-06-08 17:00",
        minuteStep: 1
    });
</script>
</body>
</html>