<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/include/head.jsp" %>
<%@ include file="/jsp/include/message.jsp" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<title>专家诊疗系统登录界面</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
	<script language="javascript">
	function doSubmit() {
		document.myform.action="account.do?flag=login";
		document.myform.submit();
	}
	$(function(){
		//失去焦点  内容改变
		$("#accountid").focusout(function(){
			var user=document.getElementById("accountid").value;
			if (user==null||user==0) {
				alert("请输入用户名或者密码!");
			}
		})
		$("#postcard").focusout(function(){
			var pwd=document.getElementById("postcard").value;
			if (pwd==null||pwd==0) {
				alert("请输入用户名或者密码!");
			}
		})
	});
	$(function(){
		$("#reg").click(function(){
			document.myform.action="account.do?flag=registershow";
			document.myform.submit();
		});
	});
</script>
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
							<h4 class="card-title">用户登录</h4>
							<form action="account.do" name="myform"  method="post">
								<div class="form-group">
									<label for="">用户名</label>

									<input id="accountid" type="text" class="form-control" name="accountid" value="admin" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">密码
										<a href="forgot.html" class="float-right">
											Forgot Password?
										</a>
									</label>
									<input id="postcard" type="password" class="form-control" name="postcard" value="123" required data-eye>
								</div>

								<div class="form-group">
									<label>
										<input type="checkbox" name="remember"> Remember Me
									</label>
								</div>

								<div class="form-group no-margin">
									<button onclick="doSubmit()" class="btn btn-primary btn-block">
										登录
									</button>
								</div>
								<div class="margin-top20 text-center">
									<button type="button" id="reg" class="btn btn-primary btn-block">
										注册
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
</body>