<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>上机考试系统</title>
</head>
<body>
<jsp:include page="teacher_index.jsp"></jsp:include>
<div class="container">
    <div class="alert navbar-inverse"
         style="background-color: #eeeeee; margin-top: 20px">
        <strong style="margin-left: 20px; font-size: 18px">按学生查找已登录信息</strong>
        <form class="form-inline" role="form" onsubmit="return selOne()"
              style="margin-left: 20px; margin-top: 5px;">
            <div class="form-group">
                <input type="text" class="form-control" style="width: 250px"
                       name="stu_id" placeholder="学号(可模糊查询)*">
                <input type="submit" class="btn btn-info" value="查找"/>
            </div>
        </form>
    </div>
    <div class="alert navbar-inverse"
         style="background-color: #eeeeee; margin-top: 20px">
        <strong style="margin-left: 20px; font-size: 18px">查找结果</strong>
        <form class="form-inline" role="form"
              style="margin-left: 20px; margin-top: 5px;">
            <table class="table table-bordered" style="margin-top: 10px">
                <tr>
                    <th class="col-md-2">学号</th>
                    <th class="col-md-2">姓名</th>
                    <th class="col-md-2">班级</th>
                    <th class="col-md-2">ip地址</th>
                    <th class="col-md-2">解除锁定</th>
                </tr>
                <tbody id="tbody"></tbody>
            </table>
        </form>
    </div>
</div>
</body>
<script type="text/javascript">

    $(function () {
        retHtml();
    })

    function selOne() {
        $.post("../selStudentById", $('.form-inline').serialize(), function (data) {
            addHtml(data);
        })
        return false;
    }

    function addHtml(data) {
        var result = "";
        for (var i = 0; i < data.length; i++) {
            result += "<tr>"
            result += "<td>" + data[i].stu_id + "</td>";
            result += "<td>" + data[i].stu_name + "</td>";
            result += "<td>" + data[i].stu_class + "</td>";
            if (data[i].stu_ip != null && data[i].seu_ip != "") {
                result += "<td>" + data[i].stu_ip + "</td>";
                result += "<td><a href='javascript:;' onclick='unbind(" + '"' + data[i].stu_id + '"' + ")' class='glyphicon glyphicon-edit btn btn-info'>解除绑定</a></td>"
            } else {
                result += "<td>未绑定ip</td><td></td>"
            }
            result += "</tr>";
        }
        $("#tbody").html(result);
    }

    function unbind(id) {
        var a = confirm("确定解除该学生的IP绑定?");

        if (a == true) {
            $.post("../unbind", {'stu_id': id}, function () {
                retHtml();
            })
            return true;
        } else {
            return false;
        }
    }

    function retHtml() {
        $.post("../getStartExamInfo", function (data) {
            addHtml(data);
        });
    }
</script>
</html>