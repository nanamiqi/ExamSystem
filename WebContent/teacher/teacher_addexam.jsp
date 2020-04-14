<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考前操作</title>
<link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">
</head>
<style>
.tttip{
	line-height: 50px;
	padding-left: 25px; 
	color: white; 
	margin-top: 8px;
}
#upexam2{
	font-size: 12px; 
	color: #f7AE3F
}
</style>
<body>
	<jsp:include page="teacher_index.jsp"></jsp:include>
	<div class="container">
		<div class="col-md-12" style="padding-left: 5px; padding-right: 5px;">
			<div class="alert navbar-inverse "
				style="background-color: #eeeeee; height: 200px; margin-top: 20px;">
				<strong style="margin-left: 20px; font-size: 18px">编辑考试信息</strong>
				<form class="form-inline" role="form" action="../editExam"
					style="margin-left: 20px; margin-top: 5px;" method="post">
					<div class="form-group">
						<input type="text" style="display: none;" value="${exam.e_name }"
							name="e_oldname" /> <input type="text" class="form-control"
							style="width: 250px" value="${exam.e_name }" placeholder="考试名称*"
							name="e_name">
					</div>

					<div class="form-group">
						<div class="input-group date form_datetime"
							data-link-field="dtp_input2">
							<input name="e_starttime" placeholder="考试时间*"
								class="form-control" type="text" readonly
								style="width: 170px; background-color: #fff;"
								value='${exam.e_starttime }'> <span
								class="input-group-addon"><span
								class="glyphicon glyphicon-remove"></span></span> <span
								class="input-group-addon"><span
								class="glyphicon glyphicon-calendar"></span></span>
						</div>
					</div>
					<br />
					<div class="checkbox" style="padding-top: 8px">
						<label style="font-size: 15px"> <c:if test='${exam.e_autostart==1}'>
								<input name="checkbox" type="checkbox" checked />自动开始 </c:if> <c:if
								test='${exam.e_autostart==0}'>
								<input name="checkbox" type="checkbox" />自动开始 </c:if> <input
							type="text" style="display: none;" value="${exam.e_autostart }"
							name="e_autostart" />
						</label>
					</div>
					<br />
					<button type="submit" style="margin-top: 8px" class="btn btn-info">修改</button>
				</form>
			</div>
			<div class="col-md-12" style="padding-left: 5px; padding-right: 5px;">
				<div class="alert navbar-inverse " id="upexam"
					style="background-color: #eeeeee; margin-top: 20px;">
					<strong style="margin-left: 20px; font-size: 18px">上传试卷</strong>
					<div class="navbar navbar-inverse tttip"
						<c:if test="${exam.e_examination=='null' or ''.equals(exam.e_examination)}">style="display:none;"</c:if>>
						已经上传过试卷，再次上传后原试卷将不可访问<a class="btn btn-default"
							href="../examDownload?e_name=${exam.e_name }" style="margin-left: 10px"><span
							class="glyphicon glyphicon-eye-open"></span>下载查看</a>
					</div>
					<form class="form-inline" role="form" action="../savePaper" onsubmit="return saveExam()"
						enctype="multipart/form-data" method="post"
						style="margin-left: 20px; margin-top: 8px;">
						<input type="file" id="paper" name="paper" />
						<button id = "btn" type="submit" style="margin-top: 5px" class="btn btn-info">上传</button>
					</form>
				</div>
			</div>
			<div class="col-md-12" style="padding-left: 5px; padding-right: 5px;">
				<div class="alert navbar-inverse "
					style="background-color: #eeeeee; height: 140px; margin-top: 20px;">
					<strong style="margin-left: 20px; font-size: 18px">导入学生名单</strong>
					<form class="form-inline" role="form" 
						style="margin-left: 20px; margin-top: 12px;">
						<label style="font-size: 12px">目前设定参加此次考试的学生人数：</label> <span id="countnumber">人</span>
						<br /> <a href="teacher_continueadd.jsp?e_name=${exam.e_name }"
							class="btn btn-info">继续导入</a>
					</form>
				</div>
			</div>
			<div class="col-md-12" style="padding-left: 5px; padding-right: 5px;">
				<div class="alert navbar-inverse "
					style="background-color: #eeeeee; height: 140px; margin-top: 20px;">
					<strong style="margin-left: 20px; font-size: 18px">开启考试</strong>
					<form class="form-inline" role="form"
						style="margin-left: 20px; margin-top: 12px;" method="post" onsubmit="return startExam()" action="../examStart">
						<span id="upexam2" <c:if test="${exam.e_examination!='null'}">style="display:none;"</c:if>>尚未上传试卷</span> <br />
						<button type="submit" style="margin-top: 12px"
							class="btn btn-warning">
							<span class="glyphicon glyphicon-off"></span>开启
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript" src="../js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
		function startExam(){
			if($("#upexam2").css("display")=="none"){
				return true;
			}else{
				alert("请先上传试卷");
				return false;
			}
		}
		
		function saveExam() {
			if ($("input[name='paper']").val().length == 0) {
				alert("请选择文件");
				return false;
			} else {
				$("#upexam").css("display","block");
				$("#upexam2").css("display","none");
				return true;
			}
		}

		$(function() {
			$("input[name='checkbox']").click(function() {
				if ($("input[name='checkbox']:checked").val() == "on") {
					$("input[name='e_autostart']").val(1);
				} else {
					$("input[name='e_autostart']").val(0);
				}
			})
			$.post("../getExamStudents", {'e_name':$("input[name='e_oldname']").val()}, function(data) {
				$("#countnumber").html(data.length);
			})
		})
		$.fn.datetimepicker.dates['zh-CN'] = {
			days : [ "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日" ],
			daysShort : [ "周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日" ],
			daysMin : [ "日", "一", "二", "三", "四", "五", "六", "日" ],
			months : [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月",
					"十月", "十一月", "十二月" ],
			monthsShort : [ "1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月",
					"9月", "10月", "11月", "12月" ],
			today : "今天",
			suffix : [],
			meridiem : [ "上午", "下午" ]
		};

		$(".form_datetime").datetimepicker({
			format : 'yyyy-mm-dd hh:ii:ss',
			language : 'zh-CN',
			autoclose : true,
			todayBtn : true,
			startDate : "2020-04-07 17:00",
			minuteStep : 1
		});
	</script>
</body>
</html>