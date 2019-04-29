<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>页面上重复的内容留言</title>

<link rel="stylesheet"
	href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
<link rel="stylesheet" href="css/style.css">
<link rel="shortcut icon" href="images/favicon.png" />
<script src="vendors/js/vendor.bundle.base.js"></script>
<script src="vendors/js/vendor.bundle.addons.js"></script>
<script src="js/off-canvas.js"></script>
<script src="js/misc.js"></script>
<script src="js/dashboard.js"></script>
</head>

<body>

	<nav
		class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
	<div
		class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
		<a class="navbar-brand brand-logo" href="index.jsp"><img
			src="images/logo.svg" alt="logo" />
		</a> <a class="navbar-brand brand-logo-mini" href="index.jsp"><img
			src="images/logo-mini.svg" alt="logo" />
		</a>
	</div>
	<div class="navbar-menu-wrapper d-flex align-items-stretch">
		<div class="search-field d-none d-md-block">
			<form class="d-flex align-items-center h-100" action="#">
				<div class="input-group">
					<div class="input-group-prepend bg-transparent">
						<i class="input-group-text border-0 mdi mdi-magnify"></i>
					</div>
					<input type="text" class="form-control bg-transparent border-0"
						placeholder="Search projects">
				</div>
			</form>
		</div>
		<ul class="navbar-nav navbar-nav-right">
			<li class="nav-item nav-profile dropdown"><a
				class="nav-link dropdown-toggle" id="profileDropdown" href="#"
				data-toggle="dropdown" aria-expanded="false">
					<div class="nav-profile-img">
						<img src="images/faces/face1.jpg" alt="image"> <span
							class="availability-status online"></span>
					</div>
					<div class="nav-profile-text">
						<p class="mb-1 text-black">管理员</p>
					</div> </a>
				<div class="dropdown-menu navbar-dropdown"
					aria-labelledby="profileDropdown">
					<a class="dropdown-item" href="#"> <i
						class="mdi mdi-cached mr-2 text-success"></i> Activity Log </a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <i
						class="mdi mdi-logout mr-2 text-primary"></i> Signout </a>
				</div></li>
			<li class="nav-item d-none d-lg-block full-screen-link"><a
				class="nav-link"> <i class="mdi mdi-fullscreen"
					id="fullscreen-button"></i> </a></li>
			<li class="nav-item dropdown"><a
				class="nav-link count-indicator dropdown-toggle"
				id="messageDropdown" href="#" data-toggle="dropdown"
				aria-expanded="false"> <i class="mdi mdi-email-outline"></i> <span
					class="count-symbol bg-warning"></span> </a>
				<div
					class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
					aria-labelledby="messageDropdown">
					<h6 class="p-3 mb-0">Messages</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<img src="images/faces/face4.jpg" alt="image" class="profile-pic">
						</div>
						<div
							class="preview-item-content d-flex align-items-start flex-column justify-content-center">
							<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark
								send you a message</h6>
							<p class="text-gray mb-0">1 Minutes ago</p>
						</div> </a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<img src="images/faces/face2.jpg" alt="image" class="profile-pic">
						</div>
						<div
							class="preview-item-content d-flex align-items-start flex-column justify-content-center">
							<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh
								send you a message</h6>
							<p class="text-gray mb-0">15 Minutes ago</p>
						</div> </a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<img src="images/faces/face3.jpg" alt="image" class="profile-pic">
						</div>
						<div
							class="preview-item-content d-flex align-items-start flex-column justify-content-center">
							<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile
								picture updated</h6>
							<p class="text-gray mb-0">18 Minutes ago</p>
						</div> </a>
					<div class="dropdown-divider"></div>
					<h6 class="p-3 mb-0 text-center">4 new messages</h6>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link count-indicator dropdown-toggle"
				id="notificationDropdown" href="#" data-toggle="dropdown"> <i
					class="mdi mdi-bell-outline"></i> <span
					class="count-symbol bg-danger"></span> </a>
				<div
					class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
					aria-labelledby="notificationDropdown">
					<h6 class="p-3 mb-0">Notifications</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<div class="preview-icon bg-success">
								<i class="mdi mdi-calendar"></i>
							</div>
						</div>
						<div
							class="preview-item-content d-flex align-items-start flex-column justify-content-center">
							<h6 class="preview-subject font-weight-normal mb-1">Event
								today</h6>
							<p class="text-gray ellipsis mb-0">Just a reminder that you
								have an event today</p>
						</div> </a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<div class="preview-icon bg-warning">
								<i class="mdi mdi-settings"></i>
							</div>
						</div>
						<div
							class="preview-item-content d-flex align-items-start flex-column justify-content-center">
							<h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
							<p class="text-gray ellipsis mb-0">Update dashboard</p>
						</div> </a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<div class="preview-icon bg-info">
								<i class="mdi mdi-link-variant"></i>
							</div>
						</div>
						<div
							class="preview-item-content d-flex align-items-start flex-column justify-content-center">
							<h6 class="preview-subject font-weight-normal mb-1">Launch
								Admin</h6>
							<p class="text-gray ellipsis mb-0">New admin wow!</p>
						</div> </a>
					<div class="dropdown-divider"></div>
					<h6 class="p-3 mb-0 text-center">See all notifications</h6>
				</div></li>
			<li class="nav-item nav-logout d-none d-lg-block"><a
				class="nav-link" href="#"> <i class="mdi mdi-power"></i> </a></li>
			<li class="nav-item nav-settings d-none d-lg-block"><a
				class="nav-link" href="#"> <i
					class="mdi mdi-format-line-spacing"></i> </a></li>
		</ul>
		<button
			class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
			type="button" data-toggle="offcanvas">
			<span class="mdi mdi-menu"></span>
		</button>
	</div>
	</nav>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
		<ul class="nav">
			<li class="nav-item nav-profile"><a href="#" class="nav-link">
					<div class="nav-profile-image">
						<img src="images/faces/face1.jpg" alt="profile"> <span
							class="login-status online"></span>
						<!--change to offline or busy as needed-->
					</div>
					<div class="nav-profile-text d-flex flex-column">
						<span class="font-weight-bold mb-2">David Grey. H</span> <span
							class="text-secondary text-small">Project Manager</span>
					</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="productPic.jsp">
					<span class="menu-title">图片管理</span> </a></li>
			<li class="nav-item"><a class="nav-link"
				href="productCategory.jsp"> <span class="menu-title">宠物类别</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="product.jsp">
					<span class="menu-title">宠物管理</span> </a></li>
			<li class="nav-item"><a class="nav-link" href="orders.jsp">
					<span class="menu-title">订单管理</span> </a></li>
			<!--  <li class="nav-item">
            <a class="nav-link" href="ordersDetails.jsp">
              <span class="menu-title">订单详情</span>
            </a>
          </li> -->
			<li class="nav-item"><a class="nav-link" href="comments.jsp">
					<span class="menu-title">用户评论</span> </a></li>
			<li class="nav-item"><a class="nav-link" href="productStore.jsp">
					<span class="menu-title">库存管理</span> </a></li>
			<li class="nav-item"><a class="nav-link" href="positions.jsp">
					<span class="menu-title">推荐管理</span> </a>    </li>
					<li class="nav-item"><a class="nav-link" href="news.jsp">
					<span class="menu-title">导购管理</span> </a>    </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="resPosition.jsp">
              <span class="menu-title">推介物品</span>
              <i class="mdi mdi-table-large menu-icon"></i>
            </a>
          </li> -->
			<!-- <li class="nav-item"><a class="nav-link" href="user.jsp"> <span
					class="menu-title">用户管理</span> </a></li>

			<li class="nav-item"><a class="nav-link"
				href="userCustomers.jsp"> <span class="menu-title">会员管理</span> </a>
			</li>
			<li class="nav-item"><a class="nav-link" href="merchant.jsp">
					<span class="menu-title">管理员管理</span> </a></li> -->

		</ul>
		</nav>
</body>
</html>
