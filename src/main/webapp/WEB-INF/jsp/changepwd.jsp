<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>用户注册</title>
<!-- Bootstrap -->
<link href="../css/bootstrap.css" rel="stylesheet">
<script src="../js/jquery-1.10.2.js"></script>
<link href="../css/login.css" rel="stylesheet" />
<script type="text/javascript">
	var msg = '${registermsg}';
	if (msg != "" && msg != undefined) {
		alert(msg);
	}
	$(function() {


		$("#id_password").keyup(function() {
			var password = $('#id_password').val();
			var password1 = $('#id_password1').val();
			if (password != "") {
				if (password == password1) {
					$("#passwordmsg").text("可以使用的密码！");
					$("#btn").attr("disabled",false);
				} else {
					$("#passwordmsg").text("两次密码不一样请重新输入！");
					$("#btn").attr("disabled",true);
				}
			} else {
				$("#passwordmsg").text("密码不能为空！");
				$("#btn").attr("disabled",true);
			}
		});

		$("#id_password1").keyup(function() {
			var password = $('#id_password').val();
			var password1 = $('#id_password1').val();
			if (password != "" && password1 != "") {
				if (password == password1) {
					$("#passwordmsg").text("可以使用的密码！");
					$("#btn").attr("disabled",false);
				} else {
					$("#passwordmsg").text("两次密码不一样请重新输入！");
					$("#btn").attr("disabled",true);
				}
			} else {
				$("#passwordmsg").text("密码不能为空！");
				$("#btn").attr("disabled",true);
			}
		});
	});
</script>
</head>
<body>
	<div id="logo">
		<img src="../images/logo.jpg" width="200px" />
	</div>
	<div class="container">
		<div class="col-md-4 col-md-offset-4">
			<form id="registerForm" class='form-login' action="#" method="post">
				<h2 class="text-center" id="welcome">修改密码</h2>

				<div class="form-group">
					<input type="hidden"
						name="uid" id="uid" class="form-control" value="${user.uid }"
						required />
				</div>
				
				<div class="form-group">
					<label for="id_username">用户名:</label> 
					<span>${user.uname }</span>
				</div>
				<div class="form-group" id="unamemsg"></div>
				<div class="form-group">
					<label for="id_password">密码:</label> <input type="password"
						name="password" id="id_password" maxlength="20"
						class="form-control" required />
				</div>
				<div class="form-group">
					<label for="id_password">确认密码:</label> <input type="password"
						name="password1" id="id_password1" maxlength="20"
						class="form-control" required />
				</div>
				<div class="form-group" id="passwordmsg"></div>
				<button type="reset" class="btn btn-default pull-left">重置</button>
				<button type="submit" id="btn" class="btn btn-primary pull-right">提交</button>
			</form>
		</div>
	</div>
</body>
</html>