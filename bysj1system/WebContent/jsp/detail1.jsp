<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/include/head.jsp" %>
<%@ include file="/jsp/include/message.jsp" %>
<%@ page isELIgnored="false" %>
<html>
<head>

<style type="text/css">
	#td1,#td2{
		background-color: green;
		color: white;
		font-size: 10;
	}
	#td3{
		background-color: brown;
		color: white;
		font-size: 20;
	}
	#tr1{
		background-color: blue;
		color: white;
	}
</style>
</head>
<body>
<form action="account.do?flag=update" name="myform"  method="post">
<table style="height: 100%; width:100%">
			<table align="center" valign="middle">
				<tr>
					<td align="right" style="font-size:14px" id="td2">
						账户ID
					</td>
					<td align="left">
						<input type="text" id="" name="accountid" readonly="readonly"  value="${account.accountid}"/>
					</td>
				</tr>
				<tr>
					<td align="right" style="font-size:14px" id="td2">
						账户名字
					</td>
					<td align="left">
						<input type="text" id="shopMaster" name="postcard"  value="${account.postcard}"/>
					</td>
				</tr>
				<tr>
					<td align="right" style="font-size:14px" id="td2">
						真实名字
					</td>
					<td align="left" id="ptd">
					<input type="text" id="" name="realname"  value="${account.realname}"/>
					</td>
				</tr>
				<tr>
				<td align="center" style="font-size:14px" id="td1">
					密码
				</td>
				<td align="left">
					<input type="text" id="" name="idnumber"  value="${account.idnumber}"/>
				</td>
				<tr>
				<td align="center" style="font-size:14px" id="td1">
					电话
				</td>
				<td align="left">
					<input type="text" id="shopNo" name="roleid"  value="${account.roleid}"/>
				</td>
				</tr>
				<tr>
				<td align="center" style="font-size:14px" id="td1">生日</td>
				<td align="left">
					<input type="date" id="time" name="accountbirthday"  value="${requestScope.accountbirthday}"/>
				</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" name="" id="" value="修改"/>
						<input type="button" name="" id="" value="关闭" onclick="window.history.back()" />
					</td>
				</tr>
			</table>
</table>
</form>
</body>
<script language="javascript">
console.log($("#idnumber").value);
</script>
</html>