<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上机考试系统</title>
<style type="text/css">
.inputclass {
	height: 30px;
	width: 180px;
}
</style>
</head>
<body>
	<jsp:include page="admin_head.jsp"></jsp:include>
	<div class="container">
		<div class="alert navbar-inverse"
			style="background-color: #eeeeee; margin-top: 20px;">
			<strong style="margin-left: 20px; font-size: 18px">修改系统配置</strong>
			<form>
				<table>
					<tr>
						<td align="right"><b>后台任务时间间隔<b></td>
						<td style="padding-left: 20px"><input type="text" value=30
							class="form-control inputclass"></td>
					</tr>
					<tr>
						<td></td>
						<td style="padding-left: 20px">制定扫描考试信息的间隔时间，单位时间为分钟</td>
					</tr>
					<tr>
						<td>&nbsp</td>
					</tr>
					<tr>
						<td align="right">分页查询记录条数</td>
						<td style="padding-left: 20px"><input type="text" value=30
							class="form-control inputclass"></td>
					</tr>

					<tr>
						<td></td>
						<td style="padding-left: 20px">指定分页查询时每页显示记录数的默认值（查询页面中可以更改）</td>
					</tr>
					<tr>
						<td>&nbsp</td>
					</tr>
					<tr>
						<td align="right">手动开启考试时间阈值</td>
						<td style="padding-left: 20px"><input type="text" value=15
							class="form-control inputclass"></td>
					</tr>
					<tr>
						<td></td>
						<td style="padding-left: 20px">指定手工开启考试时允许的最大提前量，单位为分钟</td>
					</tr>
					<tr>
						<td>&nbsp</td>
					</tr>
					<tr>
						<td align="right">上传文件字节数下限</td>
						<td style="padding-left: 20px"><input type="text" value=512
							class="form-control inputclass"></td>
					</tr>
					<tr>
						<td></td>
						<td style="padding-left: 20px">指定上传文件的下限（字节），低于此值发出警告</td>
					</tr>
					<tr>
						<td>&nbsp</td>
					</tr>
					<tr>
						<td align="right">上传文件字节数上限</td>
						<td style="padding-left: 20px"><input type="text"
							value=131072 class="form-control inputclass"></td>
					</tr>
					<tr>
						<td></td>
						<td style="padding-left: 20px">指定上传文件的长度上限（字节），高于此值发出警告</td>
					</tr>
					<tr>
						<td>&nbsp</td>
					</tr>
					<tr>
						<td>&nbsp</td>
					</tr>
					<tr>
						<td></td>
						<td style="padding-left: 20px"><button type="submit"
								class="btn btn-info">修改</button></td>
					</tr>
				</table>
			</form>
		</div>

	</div>
</body>
</html>