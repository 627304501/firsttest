<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/include/head.jsp" %>
<%@ include file="/jsp/include/message.jsp" %>
<html lang="en">

<head>
<%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" +     
        request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>">
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Home</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="<%=basePath%>vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<%=basePath%>vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="<%=basePath%>vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<%=basePath%>css/style1.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="<%=basePath%>images/favicon.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="navbar-brand-wrapper d-flex justify-content-center">
        <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">  
          <a class="navbar-brand brand-logo" href="index.html"><img src="images/logo.svg" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo"/></a>
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-sort-variant"></span>
          </button>
        </div>  
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <ul class="navbar-nav mr-lg-4 w-100">
          <li class="nav-item nav-search d-none d-lg-block w-100">
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text" id="search">
                  <i class="mdi mdi-magnify"></i>
                </span>
              </div>
              <input type="text" class="form-control" placeholder="请输入病人姓名或者身份证号" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown mr-1">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="images/faces/face5.jpg" alt="profile"/>
              <span class="nav-profile-name">欢迎,${namea}</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="mdi mdi-settings text-primary"></i>
                Settings
              </a>
              <a class="dropdown-item">
                <i class="mdi mdi-logout text-primary"></i>
                Logout
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="account.do?flag=selectAll" >
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">主页</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#术前" aria-expanded="false" aria-controls="术前">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">术前诊疗资料</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="术前">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">患者病历资料</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">患者检查结果</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">患者影像类型检查结果</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">患者视频类型检查结果</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">术前资料综合分析</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#术中" aria-expanded="false" aria-controls="术中">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">术中诊疗资料</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="术中">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">手术过程文字类型记录</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">手术过程影像类型记录</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">手术过程视频类型记录</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">病理切片信息</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">手术标本信息</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">手术中其他信息动态管理</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">术中资料综合分析</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#术后" aria-expanded="false" aria-controls="术后">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">术后诊疗资料</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="术后">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">术后问诊记录</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">术后文字类型检查结果</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">术后影像类型检查结果</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">术后资料综合分析</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#专家库" aria-expanded="false" aria-controls="专家库">
              <i class="mdi mdi-view-headline menu-icon"></i>
              <span class="menu-title">专家库</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="专家库">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">科室信息</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">专家信息</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="mdi mdi-file-document-box-outline menu-icon"></i>
              <span class="menu-title">权限管理</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> 系统角色 </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> 系统功能 </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> 登录用户权限 </a></li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <p class="card-title">病历</p>
                  <div class="table-responsive">
                  <form action="account.do?flag=update" name="myform"  method="post">
                    <table id="recent-purchases-listing" class="table">
                      <thead>
                        <tr>
                            <th>用户ID</th>
                            <th>密码</th>
                            <th>姓名</th>
                            <th>身份证号</th>
                            <th>病历详情</th>
							<c:if test="${cons eq 1}">
						<th>操作</th>
						</c:if>
					</tr>
						<c:forEach items="${list}" var="av">
					<tr>
						<td class="center">${av.accountid}</td> 
						<td class="center">${av.postcard}</td>
						<td class="center">${av.realname}</td>
						<td class="center">${av.idnumber}</td>
						<td class="center">
						<a href="account.do?flag=updateshow&accountid=${av.accountid}" title="病历详情" class="">病历详情</a>
						</td>
						<c:if test="${cons eq 1}">
						<td class="center">
						<!-- <a href="account.do?flag=updateshow&accountid=${av.accountid}" title="病历详情" class="">删除</a> -->
						
            <a  href="documentation/documentation.html">
              <i class="mdi mdi-file-document-box-outline menu-icon"></i>
              <span class="menu-title">删除</span>
            </a>
          
						</td>
						</c:if>
					</tr>
					</c:forEach>
                      </tbody>
                    </table>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="<%=basePath%>vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="<%=basePath%>vendors/chart.js/Chart.min.js"></script>
  <script src="<%=basePath%>vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="<%=basePath%>vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="<%=basePath%>js/off-canvas.js"></script>
  <script src="<%=basePath%>js/hoverable-collapse.js"></script>
  <script src="<%=basePath%>js/template.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="<%=basePath%>js/dashboard.js"></script>
  <script src="<%=basePath%>js/data-table.js"></script>
  <script src="<%=basePath%>js/jquery.dataTables.js"></script>
  <script src="<%=basePath%>js/dataTables.bootstrap4.js"></script>
  <script type="text/javascript">
  </script>
  <!-- End custom js for this page-->
</body>
</html>