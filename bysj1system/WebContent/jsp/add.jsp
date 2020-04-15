<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/include/head.jsp" %>
<%@ include file="/jsp/include/message.jsp" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<title>用户注册界面</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img src="images/logo.jpg">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">新用户注册</h4>
							<form action="register.do?flag=register" method="post" name="myform">
							 
								<div class="form-group">
									<label for="name">用户名</label>
									<input id="accounyid" type="text" class="form-control" name="accountid" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">密码</label>
									<input id="postcard" type="password" class="form-control" name="postcard" required data-eye>
								</div>
								
								<div class="form-group">
									<label for="">真实姓名</label>
									<input id="realname" type="text" class="form-control" name="realname" required data-eye>
								</div>
								
								<div class="form-group">
									<label for="">身份证号</label>
									<input id="idnumber" type="text" class="form-control" name="idnumber" required data-eye>
								</div>
								
								<div class="form-group">
									<label for="">权限注册</label>
									<input id="roleid" type="text" class="form-control" name="roleid" required data-eye>
								</div>

								<div class="form-group"> 
								<label for="password">身份选择:</label>
								<select class="form-control"  name="rolevalue">
										<option class="form-control">请选择</option>
										<c:forEach items="${rolevaluelist}" var="r">
										<option value="${r.rolevalue}">${r.rolename}</option><br>
										</c:forEach>
										</select>
								</div>
								
								<!--  <div class="form-group">
									<label>
										<input type="checkbox" name="aggree" value="1"> I agree to the Terms and Conditions
									</label>
								</div>-->

								<div class="form-group no-margin">
									<button type="submit" class="btn btn-primary btn-block">
										注册
									</button>
								</div>
								<div class="margin-top20 text-center">
									<button type="button" id="ret" class="btn btn-primary btn-block">
										返回
									</button>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/my-login.js"></script>
	<script language="javascript">
	$(function(){
		$("#ret").click(function(){
			document.myform.action="account.do?flag=loginshow";
			document.myform.submit();
		});
	});
</script>
</body>
</html>