
<%@ page import="OPS.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: FM-Tibeb
  Date: 6/24/2015
  Time: 4:38 AM
--%><!--

This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
	<meta name="layout" content="starter"/>
	<meta charset="UTF-8">
	<title>ETOPS-ADMIN | Dashboard</title>
	<!-- REQUIRED JS SCRIPTS -->
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>


	<!-- Optionally, you can add Slimscroll and FastClick plugins.
          Both of these plugins are recommended to enhance the
          user experience. Slimscroll is required when using the
          fixed layout. -->

</head>
<!--
  BODY TAG OPTIONS:
  =================
  Apply one or more of the following classes to get the
  desired effect
  |---------------------------------------------------------|
  | SKINS         | skin-green                               |
  |               | skin-black                              |
  |               | skin-purple                             |
  |               | skin-yellow                             |
  |               | skin-red                                |
  |               | skin-green                              |
  |---------------------------------------------------------|
  |LAYOUT OPTIONS | fixed                                   |
  |               | layout-boxed                            |
  |               | layout-top-nav                          |
  |               | sidebar-collapse                        |
  |               | sidebar-mini                            |
  |---------------------------------------------------------|
  -->
<body class="skin-green  sidebar-collapse">


<!-- Main Header -->
<!-- Main Header -->
<header class="main-header">

	<!-- Logo -->
	<a href="" class="logo">
		<!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><strong>ET</strong>OPS</span>
		<!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><strong>ETOPS </strong>ADMIN</span>
	</a>

	<!-- Header Navbar -->
	<nav class="navbar navbar-static-top" role="navigation">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
			<span class="sr-only"> navigation</span>
		</a>
		<!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu">
					<!-- Menu toggle button -->
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-envelope-o"></i>
						<span class="label label-success"></span>
					</a>
					<ul class="dropdown-menu">
						<li class="header">You have  messages</li>
						<li>
							<!-- inner menu: contains the messages -->
							<ul class="menu">
								<li><!-- start message -->
									<a href="#">
										<div class="pull-left">
											<!-- User Image
											<img src="${request.contextPath}/starter/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>-->
										</div>
										<!-- Message title and timestamp -->
										<h4>
											Support Team
											<small><i class="fa fa-clock-o"></i> 5 mins</small>
										</h4>
										<!-- The message -->
										<p>Why not ?</p>
									</a>
								</li><!-- end message -->
							</ul><!-- /.menu -->
						</li>
						<li class="footer"><a href="#">See All Messages</a></li>
					</ul>
				</li><!-- /.messages-menu -->

			<!-- Notifications Menu -->
				<li class="dropdown notifications-menu">
					<!-- Menu toggle button -->
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-bell-o"></i>
						<span class="label label-warning"></span>
					</a>
					<ul class="dropdown-menu">
						<li class="header">You have  notifications</li>
						<li>
							<!-- Inner Menu: contains the notifications -->
							<ul class="menu">
								<li><!-- start notification -->
									<a href="#">
										<i class="fa fa-users text-aqua"></i> 5 new members joined today
									</a>
								</li><!-- end notification -->
							</ul>
						</li>
						<li class="footer"><a href="#">View all</a></li>
					</ul>
				</li>
				<!-- Tasks Menu -->
				<li class="dropdown tasks-menu">
					<!-- Menu Toggle Button -->
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-flag-o"></i>
						<span class="label label-danger"></span>
					</a>
					<ul class="dropdown-menu">
						<li class="header">You have  tasks</li>
						<li>
							<!-- Inner menu: contains the tasks -->
							<ul class="menu">
								<li><!-- Task item -->
									<a href="#">
										<!-- Task title and progress text -->
										<h3>
											Design some work flows
											<small class="pull-right">20%</small>
										</h3>
										<!-- The progress bar -->
										<div class="progress xs">
											<!-- Change the css width attribute to simulate progress -->
											<div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
									</a>
								</li><!-- end task item -->
							</ul>
						</li>
						<li class="footer">
							<a href="#">View all tasks</a>
						</li>
					</ul>
				</li>
				<!-- User Account Menu -->
				<li class="dropdown user user-menu">
					<!-- Menu Toggle Button -->
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<!-- The user image in the navbar-->
						<img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
						<!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">Ramp Agents</span>
					</a>
					<ul class="dropdown-menu">
						<!-- The user image in the menu -->
						<li class="user-header">
							<!--img src="${request.contextPath}/starter/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" /-->
							<p>
								Ramp Agents - Web app
								<small>planning & scheduling</small>
							</p>
						</li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="col-xs-4 text-center">
								<a href="#">Settings</a>
							</div>
							<div class="col-xs-4 text-center">
								<a href="#">Team</a>
							</div>
							<div class="col-xs-4 text-center">
								<a href="#">Friends</a>
							</div>
						</li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="#" class="btn btn-default btn-flat">Profile</a>
							</div>
							<div class="pull-right">
								<a href="logout" class="btn btn-default btn-flat">Sign out</a>
							</div>
						</li>
					</ul>
				</li>
				<!-- Control Sidebar Toggle Button -->
				<li>
					<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
				</li>
			</ul>
		</div>
	</nav>
</header>
<!-- Left side column. contains the logo and sidebar -->


<aside class="main-sidebar">

	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- Sidebar user panel (optional) -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src=""${request.contextPath}/starter/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
			</div>
			<div class="pull-left info">
				<p>Ramp Agents</p>
				<!-- Status -->
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>

		<!-- search form (Optional) -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search..."/>
				<span class="input-group-btn">
					<button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
				</span>
			</div>
		</form>
		<!-- /.search form -->

		<!-- sidebar menu: : style can be found in sidebar.less -->

		<!-- Sidebar Menu -->
		<ul class="sidebar-menu">
			<li class="header">HEADER</li>
			<li class="active"><a href=""><i class="fa-link"></i> <span>HOME</span></a></li>
			<!-- Optionally, you can add icons to the links -->

			<li><a href="staff/index"><i class='fa fa-circle-o'></i> <span>Staff</span></a></li>
			<li><a href="attendance"><i class="fa fa-dashboard"></i> <span>Attendance</span></a></li>
			<li ><a href="ETDirectory/index"><i class='fa fa-link'></i> <span>ET Directory</span></a></li>
			<li><a href="claimLostItem/index"><i class='fa fa-link'></i> <span>Baggage Claim</span></a></li>
			<li><a href="foundItem/index"><i class='fa fa-link'></i> <span>Found Item</span></a></li>
			<li><a href="item/create"><i class='fa fa-link'></i> <span>Record Item</span></a></li>


			<li class="treeview">
				<a href="#"><i class='fa fa-link'></i>
					<span>Link</span> <i class="fa fa-angle-left pull-right"></i>
					<span class="label label-primary pull-right">2</span>

				</a>
				<ul class="treeview-menu">

					<li><a href="performance/index"><i class="fa fa-circle-o"></i>Performance</a></li>
					<li><a href="/index"><i class="fa fa-circle-o"></i>Phone Directory</a></li>
				</ul>
			</li>
			<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
				<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
			</g:each>
		</ul><!-- /.sidebar-menu -->
	</section>
	<!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			ET-OPS
			<small>Planning & Scheduling</small>
		</h1>
		<ol class="breadcrumb">

			<li><a href="#"><i class="fa fa-dashboard"></i> ACE</a></li>


			<li class="active">Here</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">

		<!-- Your Page Content Here -->




	</section><!-- /.content -->
</div><!-- /.content-wrapper -->

<!-- Main Footer -->

<!-- Control Sidebar -->
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
<div class='control-sidebar-bg'></div>
</div><!-- ./wrapper -->
<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-light">
	<!-- Create the tabs -->
	<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
		<li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
		<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
	</ul>
	<!-- Tab panes -->
	<div class="tab-content">
		<!-- AdminET tab content -->
		<div class="tab-pane active" id="control-sidebar-home-tab">
			<h3 class="control-sidebar-heading">Recent Activity</h3>
			<ul class='control-sidebar-menu'>
				<li>
					<a href='javascript::;'>
						<i class="menu-icon fa fa-birthday-cake bg-red"></i>
						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Company Holiday</h4>
							<p>Will be 23 on April 24th</p>
						</div>
					</a>
				</li>
			</ul><!-- /.control-sidebar-menu -->

			<h3 class="control-sidebar-heading">Tasks Progress</h3>
			<ul class='control-sidebar-menu'>
				<li>
					<a href='javascript::;'>
						<h4 class="control-sidebar-subheading">
							Gold qualified activitie Design
							<span class="label label-danger pull-right">70%</span>
						</h4>
						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
						</div>
					</a>
				</li>
			</ul><!-- /.control-sidebar-menu -->

		</div><!-- /.tab-pane -->
	<!-- Stats tab content -->
		<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
	<!-- Settings tab content -->
		<div class="tab-pane" id="control-sidebar-settings-tab">
			<form method="post">
				<h3 class="control-sidebar-heading">General Settings</h3>
				<div class="form-group">
					<label class="control-sidebar-subheading">
						Report panel usage
						<input type="checkbox" class="pull-right" checked />
					</label>
					<p>
						Some information about this general settings option
					</p>
				</div><!-- /.form-group -->
			</form>
		</div><!-- /.tab-pane -->
	</div>
</aside><!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
<div class='control-sidebar-bg'></div>
</div><!-- ./wrapper -->
<!-- REQUIRED JS SCRIPTS -->


</body>
</html>