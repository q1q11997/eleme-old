<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>用户登录</title>
<!-- Bootstrap -->
<link href="../css/bootstrap.css" rel="stylesheet">
<script src="../js/jquery-1.10.2.js"></script>
<link href="../css/login.css" rel="stylesheet" />
<script type="text/javascript">
    	var msg = '${loginmsg}';
    	if(msg!=""&&msg!=undefined){
    		alert(msg);
    	}
</script>
</head>
<body>
	<%@ include file="main.nav.jsp"%>
	<div id="logo">
		<img src="../images/logo.jpg" width="200px" />
	</div>
	<div class="container">
		<div class="col-md-4 col-md-offset-4">
			<form class='form-login' action="#" method="post">
				<h2 class="text-center" id="welcome">填写地址</h2>

				<div class="form-group">
					<label for="id_username">联系人:</label> <input type="text"
						name="linkman" id="linkman" maxlength="20" class="form-control"
						required />
				</div>
				<div class="form-group">
					<label for="id_password">性别:</label> 
					<input id="man" type="radio" checked="checked" name="sex" value="男" />先生
					<input id="woman" type="radio"  name="sex" value="女"/>女士
				</div>
					<div class="form-group">
					<label for="id_password">联系电话：</label> <input type="text"
						name="utel" id="utel" maxlength="20"
						class="form-control" required />
				</div>
					<div class="form-group">
					<label for="id_password">地址:</label> <input type="text"
						name="uaddress" id="uaddress" maxlength="20"
						class="form-control" required />
				</div>
				<input type="hidden"
					name="uid" id="uid" maxlength="20"
					class="form-control" value="${user.uid }" />
				<button type="reset" class="btn btn-default pull-left">重置</button>
				<button type="submit" class="btn btn-primary pull-right">提交</button>

			</form>
		</div>
	</div>
</body>
</html>