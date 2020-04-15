<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/include/head.jsp" %>
<%@ include file="/jsp/include/message.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		overflow: hidden;
	}
	#tr1{
		background-color: blue;
		color: white;
	}
</style>
</head>
<body>
<div><font id="td3">${namea}，欢迎登录系统</font><%-- <span>当前在线人数${accountNum}</span> --%></div>
<form action="account.do" name="myform"  method="post">
<hr>
<table style="height: 100%; width:100%">
			<table  border="1">
				<tr>
				<td align="center" style="font-size:14px" id="td1">
					状态选择
				</td>
				<td align="left">
					<select class="select" name="statusvalue">
							<option value="0">当前状态:${account.status.statusname }</option>
								<c:forEach items="${statusvaluelist}" var="s">
									<option value="${s.statusvalue }">${s.statusname }</option>
								</c:forEach>
						</select>
				</td>
				</tr>
				<tr>
					<td align="right" style="font-size:14px" id="td2">
						请输入用户名查询
					</td>
					<td align="left">
						<input type="text" id="shopName" value="${param.key }" name="key" maxlength="20" />
					</td>
				</tr>
				<tr>
					<td colspan="" align="center">
						<input type="button"  value="查询" id="btn1" />
					</td>
					<td align="center">
					<input type="button" value="查询所有信息" id="sel" />
					</td>
					<c:if test="${namea eq '张三' }">
					<td align="center"><input type="button" value="修改" id="upd" /></td>
					<td align="center"><input type="button" value="删除" id="del" /></td>
					</c:if>
				</tr>
				<c:if test="${namea eq '张三' }">
				<tr>
					<td colspan="" align="center">
						<input type="button" value="拉黑" id="blacklist" />
					</td>
					<td align="center">
					<input type="button" value="审批通过" id="Approval" />
					</td>
					<td align="center">
					<input type="button" value="审批不通过" id="Approvalfailed" />
					</td>
					<td align="center">
					<input type="button" value="批量删除" id="delectlist" />
					</td>
				</tr>
				</c:if>
			</table>
			<table id="tableId" border="1">
						<tr id="tr1">
						<c:if test="${namea eq '张三' }">
						<th><input type="checkbox" value="" name="checkall" id="checkAll"   />全选 </th>
						<th><input type="checkbox" value="" name="checkother" id="ReverseSelect"   />反选</th>
						</c:if>
						<th>账户ID</th>
						<th>账户名字</th>
						<th>真实名字</th>
						<th>电话</th>
						<th>生日</th>
						<th>角色</th>
						<th>状态</th>
						<c:if test="${namea eq '张三' }">
						<th>操作</th>
						</c:if>
					</tr>
						<c:forEach items="${list}" var="av">
					<tr>
					<c:if test="${namea eq '张三' }">
						<td class="center" colspan="2" align="center"><input type="checkbox" name="ck" value="${av.accountid}"  id="" name="accountid" /></td>
						</c:if>
						<td class="center">${av.accountid}</td> 
						<td class="center">${av.accountname}</td>
						<td class="center">${av.accountrealname}</td>
						<td class="center">${av.accountphone}</td>
						<td class="center"><fmt:formatDate value='${av.accountbirthday}' type='time' pattern='yyyy-MM-dd'/></td>
						<td class="center">${av.role.rolename}</td>
						<td class="center">${av.status.statusname}</td>
						<c:if test="${namea eq '张三' }">
						<td class="center">
						<a href="account.do?flag=updateshow&accountid=${av.accountid}" title="编辑" class="">编辑</a>
						<a href="account.do?flag=delectaccount&accountid=${av.accountid}" title="删除" class="">删除</a>
						</td>
						</c:if>
					</tr>
					</c:forEach>
			</table>
</table>
</form>
</body>
<script language="javascript">
$(function(){
	$("#blacklist").click(function(){
		document.myform.action="account.do?flag=selectAll";
		document.myform.submit();
	});
});
$(function(){
	$("#Approval").click(function(){
		document.myform.action="account.do?flag=selectAll";
		document.myform.submit();
	});
});
$(function(){
	$("#Approvalfailed").click(function(){
		document.myform.action="account.do?flag=selectAll";
		document.myform.submit();
	});
});
$(function(){
	$("#delectlist").click(function(){
		var a=0;
		$("input[name=ck]").each(function(i,date){
			if($(date).prop("checked")){
				a=$(date).val();
				document.myform.action="account.do?flag=delectAll";
				document.myform.submit();
			}
		});
		if(a==0){
			alert("至少选择一条数据");
		}
	});
});
	$(function(){
		$("#sel").click(function(){
			document.myform.action="account.do?flag=selectAll";
			document.myform.submit();
		});
	});
	$(function(){
		$("#btn1").click(function(){
			document.myform.action="account.do?flag=selectByKey";
			document.myform.submit();
		});
	});
	//复选框全选和全不选
	$("#checkAll").on("click",function(){
		if($(this).is(':checked')){
			//全选
			$(":checkbox[name='ck']").each(function(){
				$(this).prop("checked",true);
			});
		}else{
			//全不选
			$(":checkbox[name='ck']").each(function(){
				$(this).prop("checked",false);
			});
		}
	});
	//复选框反选
	$("#ReverseSelect").on("click",function(){
		$(":checkbox[name='ck']").each(function(){
			//遍历所有复选框，然后取值进行 !非操作
			$(this).prop("checked", !$(this).prop("checked"));
		})
	});
	$(function(){
		$("#upd").click(function(){
			var a=0;
			$("input[name=ck]").each(function(i,date){
				if($(date).prop("checked")){
					a=$(date).val();
					document.myform.action="account.do?flag=updateshow&accountid="+a;
					document.myform.submit();
				}
			});
			if(a==0){
				alert("请选择一条数据");
			}
		});
		});
</script>
</html>