<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.7
Version: 4.7
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8" />
<title>VMetrix QueryBuilder®</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta
	content="#1 selling multi-purpose bootstrap admin theme sold in themeforest marketplace packed with angularjs, material design, rtl support with over thausands of templates and ui elements and plugins to power any type of web applications including saas and admin dashboards. Preview page of Theme #4 for blank page layout"
	name="description" />
<meta content="" name="author" />
<!-- BEGIN VMQB PLUGIN -->
<script type="text/javascript" language="javascript"
	src="http://www.technicalkeeda.com/js/javascripts/plugin/jquery.js"></script>
<script type="text/javascript"
	src="http://www.technicalkeeda.com/js/javascripts/plugin/json2.js"></script>
<script type="text/javascript" src="js/vmqb.file.js"></script>
<script type="text/javascript" src="js/xml2json.js"></script>
<!-- END VMQB PLUGIN -->

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link href="assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="assets/global/css/components.min.css" rel="stylesheet"
	id="style_components" type="text/css" />
<link href="assets/global/css/plugins.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="assets/layouts/layout4/css/layout.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets/layouts/layout4/css/themes/default.min.css"
	rel="stylesheet" type="text/css" id="style_color" />
<link href="assets/layouts/layout4/css/custom.min.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->

<script type="text/javascript">
	
		var tablesFields = createArray(${tableList.size()});
	
		<c:forEach var="table" items="${tableList}" varStatus="loopTable">
			tablesFields[${loopTable.index}] = createArray( ${table.getFields().size()} );
			<c:forEach var="fieldName" items="${table.getFields()}" varStatus="loopField">
				tablesFields[${loopTable.index}][${loopField.index}] = '${table.getTableName()}.${fieldName}';
			</c:forEach>
		</c:forEach>
	
	</script>
<body
	class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->
		<div class="page-header-inner ">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href="index.html"> <img
					src="assets/layouts/layout4/img/logo-light.png" alt="logo"
					class="logo-default" />
				</a>
				<div class="menu-toggler sidebar-toggler">
					<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
				</div>
			</div>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="menu-toggler responsive-toggler"
				data-toggle="collapse" data-target=".navbar-collapse"> </a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN PAGE ACTIONS -->
			<!-- DOC: Remove "hide" class to enable the page header actions -->
			<div class="page-actions">
				<div class="btn-group">
					<button type="button" class="btn red-haze btn-sm dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown"
						data-close-others="true">
						<span class="hidden-sm hidden-xs">Actions&nbsp;</span> <i
							class="fa fa-angle-down"></i>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="javascript:;"> <i class="icon-docs"></i> New
								Post
						</a></li>
						<li><a href="javascript:;"> <i class="icon-tag"></i> New
								Comment
						</a></li>
						<li><a href="javascript:;"> <i class="icon-share"></i>
								Share
						</a></li>
						<li class="divider"></li>
						<li><a href="javascript:;"> <i class="icon-flag"></i>
								Comments <span class="badge badge-success">4</span>
						</a></li>
						<li><a href="javascript:;"> <i class="icon-users"></i>
								Feedbacks <span class="badge badge-danger">2</span>
						</a></li>
					</ul>
				</div>
			</div>
			<!-- END PAGE ACTIONS -->
			<!-- BEGIN PAGE TOP -->
			<div class="page-top">
				<!-- BEGIN HEADER SEARCH BOX -->
				<!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
				<form class="search-form" action="page_general_search_2.html"
					method="GET">
					<div class="input-group">
						<input type="text" class="form-control input-sm"
							placeholder="Search..." name="query"> <span
							class="input-group-btn"> <a href="javascript:;"
							class="btn submit"> <i class="icon-magnifier"></i>
						</a>
						</span>
					</div>
				</form>
				<!-- END HEADER SEARCH BOX -->
				<!-- BEGIN TOP NAVIGATION MENU -->
				<div class="top-menu">
					<ul class="nav navbar-nav pull-right">
						<li class="separator hide"></li>
						<!-- BEGIN NOTIFICATION DROPDOWN -->
						<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
						<!-- DOC: Apply "dropdown-hoverable" class after "dropdown" and remove data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to enable hover dropdown mode -->
						<!-- DOC: Remove "dropdown-hoverable" and add data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to the below A element with dropdown-toggle class -->
						<li
							class="dropdown dropdown-extended dropdown-notification dropdown-dark"
							id="header_notification_bar"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <i
								class="icon-bell"></i> <span class="badge badge-success">
									7 </span>
						</a>
							<ul class="dropdown-menu">
								<li class="external">
									<h3>
										<span class="bold">12 pending</span> notifications
									</h3> <a href="page_user_profile_1.html">view all</a>
								</li>
								<li>
									<ul class="dropdown-menu-list scroller" style="height: 250px;"
										data-handle-color="#637283">
										<li><a href="javascript:;"> <span class="time">just
													now</span> <span class="details"> <span
													class="label label-sm label-icon label-success"> <i
														class="fa fa-plus"></i>
												</span> New user registered.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">3
													mins</span> <span class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i>
												</span> Server #12 overloaded.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">10
													mins</span> <span class="details"> <span
													class="label label-sm label-icon label-warning"> <i
														class="fa fa-bell-o"></i>
												</span> Server #2 not responding.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">14
													hrs</span> <span class="details"> <span
													class="label label-sm label-icon label-info"> <i
														class="fa fa-bullhorn"></i>
												</span> Application error.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">2
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i>
												</span> Database overloaded 68%.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">3
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i>
												</span> A user IP blocked.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">4
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-warning"> <i
														class="fa fa-bell-o"></i>
												</span> Storage Server #4 not responding dfdfdfd.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">5
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-info"> <i
														class="fa fa-bullhorn"></i>
												</span> System Error.
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="time">9
													days</span> <span class="details"> <span
													class="label label-sm label-icon label-danger"> <i
														class="fa fa-bolt"></i>
												</span> Storage server failed.
											</span>
										</a></li>
									</ul>
								</li>
							</ul></li>
						<!-- END NOTIFICATION DROPDOWN -->
						<li class="separator hide"></li>
						<!-- BEGIN INBOX DROPDOWN -->
						<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
						<li
							class="dropdown dropdown-extended dropdown-inbox dropdown-dark"
							id="header_inbox_bar"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <i
								class="icon-envelope-open"></i> <span class="badge badge-danger">
									4 </span>
						</a>
							<ul class="dropdown-menu">
								<li class="external">
									<h3>
										You have <span class="bold">7 New</span> Messages
									</h3> <a href="app_inbox.html">view all</a>
								</li>
								<li>
									<ul class="dropdown-menu-list scroller" style="height: 275px;"
										data-handle-color="#637283">
										<li><a href="#"> <span class="photo"> <img
													src="assets/layouts/layout3/img/avatar2.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from">
														Lisa Wong </span> <span class="time">Just Now </span>
											</span> <span class="message"> Vivamus sed auctor nibh congue
													nibh. auctor nibh auctor nibh... </span>
										</a></li>
										<li><a href="#"> <span class="photo"> <img
													src="assets/layouts/layout3/img/avatar3.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from">
														Richard Doe </span> <span class="time">16 mins </span>
											</span> <span class="message"> Vivamus sed congue nibh auctor
													nibh congue nibh. auctor nibh auctor nibh... </span>
										</a></li>
										<li><a href="#"> <span class="photo"> <img
													src="assets/layouts/layout3/img/avatar1.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from"> Bob
														Nilson </span> <span class="time">2 hrs </span>
											</span> <span class="message"> Vivamus sed nibh auctor nibh
													congue nibh. auctor nibh auctor nibh... </span>
										</a></li>
										<li><a href="#"> <span class="photo"> <img
													src="assets/layouts/layout3/img/avatar2.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from">
														Lisa Wong </span> <span class="time">40 mins </span>
											</span> <span class="message"> Vivamus sed auctor 40% nibh
													congue nibh... </span>
										</a></li>
										<li><a href="#"> <span class="photo"> <img
													src="assets/layouts/layout3/img/avatar3.jpg"
													class="img-circle" alt="">
											</span> <span class="subject"> <span class="from">
														Richard Doe </span> <span class="time">46 mins </span>
											</span> <span class="message"> Vivamus sed congue nibh auctor
													nibh congue nibh. auctor nibh auctor nibh... </span>
										</a></li>
									</ul>
								</li>
							</ul></li>
						<!-- END INBOX DROPDOWN -->
						<li class="separator hide"></li>
						<!-- BEGIN TODO DROPDOWN -->
						<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
						<li
							class="dropdown dropdown-extended dropdown-tasks dropdown-dark"
							id="header_task_bar"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-close-others="true"> <i
								class="icon-calendar"></i> <span class="badge badge-primary">
									3 </span>
						</a>
							<ul class="dropdown-menu extended tasks">
								<li class="external">
									<h3>
										You have <span class="bold">12 pending</span> tasks
									</h3> <a href="?p=page_todo_2">view all</a>
								</li>
								<li>
									<ul class="dropdown-menu-list scroller" style="height: 275px;"
										data-handle-color="#637283">
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">New release v1.2 </span> <span
													class="percent">30%</span>
											</span> <span class="progress"> <span style="width: 40%;"
													class="progress-bar progress-bar-success"
													aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">40% Complete</span>
												</span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Application deployment</span> <span
													class="percent">65%</span>
											</span> <span class="progress"> <span style="width: 65%;"
													class="progress-bar progress-bar-danger" aria-valuenow="65"
													aria-valuemin="0" aria-valuemax="100"> <span
														class="sr-only">65% Complete</span>
												</span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Mobile app release</span> <span
													class="percent">98%</span>
											</span> <span class="progress"> <span style="width: 98%;"
													class="progress-bar progress-bar-success"
													aria-valuenow="98" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">98% Complete</span>
												</span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Database migration</span> <span
													class="percent">10%</span>
											</span> <span class="progress"> <span style="width: 10%;"
													class="progress-bar progress-bar-warning"
													aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">10% Complete</span>
												</span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Web server upgrade</span> <span
													class="percent">58%</span>
											</span> <span class="progress"> <span style="width: 58%;"
													class="progress-bar progress-bar-info" aria-valuenow="58"
													aria-valuemin="0" aria-valuemax="100"> <span
														class="sr-only">58% Complete</span>
												</span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">Mobile development</span> <span
													class="percent">85%</span>
											</span> <span class="progress"> <span style="width: 85%;"
													class="progress-bar progress-bar-success"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">85% Complete</span>
												</span>
											</span>
										</a></li>
										<li><a href="javascript:;"> <span class="task">
													<span class="desc">New UI release</span> <span
													class="percent">38%</span>
											</span> <span class="progress progress-striped"> <span
													style="width: 38%;"
													class="progress-bar progress-bar-important"
													aria-valuenow="18" aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">38% Complete</span>
												</span>
											</span>
										</a></li>
									</ul>
								</li>
							</ul></li>
						<!-- END TODO DROPDOWN -->
						<!-- BEGIN USER LOGIN DROPDOWN -->
						<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
						<li class="dropdown dropdown-user dropdown-dark"><a
							href="javascript:;" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown"
							data-close-others="true"> <span
								class="username username-hide-on-mobile"> Nick </span> <!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
								<img alt="" class="img-circle"
								src="assets/layouts/layout4/img/avatar9.jpg" />
						</a>
							<ul class="dropdown-menu dropdown-menu-default">
								<li><a href="page_user_profile_1.html"> <i
										class="icon-user"></i> My Profile
								</a></li>
								<li><a href="app_calendar.html"> <i
										class="icon-calendar"></i> My Calendar
								</a></li>
								<li><a href="app_inbox.html"> <i
										class="icon-envelope-open"></i> My Inbox <span
										class="badge badge-danger"> 3 </span>
								</a></li>
								<li><a href="app_todo_2.html"> <i class="icon-rocket"></i>
										My Tasks <span class="badge badge-success"> 7 </span>
								</a></li>
								<li class="divider"></li>
								<li><a href="page_user_lock_1.html"> <i
										class="icon-lock"></i> Lock Screen
								</a></li>
								<li><a href="page_user_login_1.html"> <i
										class="icon-key"></i> Log Out
								</a></li>
							</ul></li>
						<!-- END USER LOGIN DROPDOWN -->
						<!-- BEGIN QUICK SIDEBAR TOGGLER -->
						<li class="dropdown dropdown-extended quick-sidebar-toggler">
							<span class="sr-only">Toggle Quick Sidebar</span> <i
							class="icon-logout"></i>
						</li>
						<!-- END QUICK SIDEBAR TOGGLER -->
					</ul>
				</div>
				<!-- END TOP NAVIGATION MENU -->
			</div>
			<!-- END PAGE TOP -->
		</div>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN HEADER & CONTENT DIVIDER -->
	<div class="clearfix"></div>
	<!-- END HEADER & CONTENT DIVIDER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->

		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="">
			<!-- BEGIN CONTENT BODY -->
			<div class="page-content">
				<!-- BEGIN PAGE HEAD-->
				<div class="page-head">
					<!-- BEGIN PAGE TITLE -->
					<div class="page-title">
						<h1>VMetrix QueryBuilder&reg; Builder Screen</h1>
					</div>
					<!-- END PAGE TITLE -->
					<!-- BEGIN PAGE TOOLBAR -->
					<div class="page-toolbar">
						<!-- BEGIN THEME PANEL -->
						<div class="btn-group btn-theme-panel">
							<a href="javascript:;" class="btn dropdown-toggle"
								data-toggle="dropdown"> <i class="icon-settings"></i>
							</a>
							<div
								class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-12">
										<h3>HEADER</h3>
										<ul class="theme-colors">
											<li class="theme-color theme-color-default active"
												data-theme="default"><span class="theme-color-view"></span>
												<span class="theme-color-name">Dark Header</span></li>
											<li class="theme-color theme-color-light " data-theme="light">
												<span class="theme-color-view"></span> <span
												class="theme-color-name">Light Header</span>
											</li>
										</ul>
									</div>
									<div class="col-md-8 col-sm-8 col-xs-12 seperator">
										<h3>LAYOUT</h3>
										<ul class="theme-settings">
											<li>Theme Style <select
												class="layout-style-option form-control input-small input-sm">
													<option value="square">Square corners</option>
													<option value="rounded" selected="selected">Rounded
														corners</option>
											</select>
											</li>
											<li>Layout <select
												class="layout-option form-control input-small input-sm">
													<option value="fluid" selected="selected">Fluid</option>
													<option value="boxed">Boxed</option>
											</select>
											</li>
											<li>Header <select
												class="page-header-option form-control input-small input-sm">
													<option value="fixed" selected="selected">Fixed</option>
													<option value="default">Default</option>
											</select>
											</li>
											<li>Top Dropdowns <select
												class="page-header-top-dropdown-style-option form-control input-small input-sm">
													<option value="light">Light</option>
													<option value="dark" selected="selected">Dark</option>
											</select>
											</li>
											<li>Sidebar Mode <select
												class="sidebar-option form-control input-small input-sm">
													<option value="fixed">Fixed</option>
													<option value="default" selected="selected">Default</option>
											</select>
											</li>
											<li>Sidebar Menu <select
												class="sidebar-menu-option form-control input-small input-sm">
													<option value="accordion" selected="selected">Accordion</option>
													<option value="hover">Hover</option>
											</select>
											</li>
											<li>Sidebar Position <select
												class="sidebar-pos-option form-control input-small input-sm">
													<option value="left" selected="selected">Left</option>
													<option value="right">Right</option>
											</select>
											</li>
											<li>Footer <select
												class="page-footer-option form-control input-small input-sm">
													<option value="fixed">Fixed</option>
													<option value="default" selected="selected">Default</option>
											</select>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- END THEME PANEL -->
					</div>
					<!-- END PAGE TOOLBAR -->
				</div>
				<!-- END PAGE HEAD-->
				<!-- BEGIN PAGE BREADCRUMB -->
				<!-- <ul class="page-breadcrumb breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <a href="#">Blank Page</a>
                            <i class="fa fa-circle"></i>
                        </li>
                        <li>
                            <span class="active">Page Layouts</span>
                        </li>
                    </ul> -->
				<!-- END PAGE BREADCRUMB -->
				<!-- BEGIN PAGE BASE CONTENT -->
				<div class="row">
					<div class="col-md-12">
						<!-- BEGIN PORTLET-->
						<div class="portlet light form-fit bordered">
							<div class="portlet-title">

								<div class="actions">
									<a class="btn btn-circle btn-icon-only btn-default"
										href="javascript:;"> <i class="icon-cloud-upload"></i>
									</a> <a class="btn btn-circle btn-icon-only btn-default"
										href="javascript:;"> <i class="icon-wrench"></i>
									</a> <a class="btn btn-circle btn-icon-only btn-default"
										href="javascript:;"> <i class="icon-trash"></i>
									</a>
								</div>
							</div>
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form action="index.html"
									class="form-horizontal form-row-seperated">
									<div class="form-body">
										<div class="form-group">
											<label class="control-label col-md-3 text-primary">Tables </label>
											<div class="col-md-5">
												<select id="tableField" onchange="selectTable(this.value)"
													class="bs-select form-control" data-live-search="true"
													data-size="8">
													<option value="">--Select a table--</option>
													<c:if test="${not empty tableList}">
														<c:forEach var="listValue" items="${tableList}">
															<option value="${listValue.getTableName()}">${listValue.getTableName()}</option>
														</c:forEach>
													</c:if>
												</select>
											</div>
										</div>
									</div>
									<div class="form-body">
										<div class="form-group">
											<label class="control-label col-md-3 text-primary">Fields </label>
											<div class="col-md-5">
												<select id="fieldsField" class="form-control" multiple style="width: 100%"></select>
												<!-- <a href="javascript:addFields();" class="btn dark"> <i
													class="fa fa-check"></i> Add Fields
												</a> -->
												<br>
												<button type="button" onclick="javascript:addFields();" class="btn blue btn-outline">Add Fields</button>
											</div>
										</div>
									</div>
									<div class="form-body">
										<div class="form-group">
										
											<table style="width: 100%;text-align: center;">
											<tbody align="center">
												<tr>
													<td style="width: 10%;"></td>
													<td style="width: 40%;"><label class="control-label text-primary">Selected
															Tables</label></td>
													<td style="width: 40%;"><label class="control-label text-primary">Selected
															Fields</label></td>
													<td style="width: 10%;"></td>
												</tr>
												<tr>
													<td style="width: 10%;"></td>
													<td>
														<div class="">
															<select id="selectedTablesField" class="form-control" multiple  style="width: 100%"></select>

														</div>
													</td>
													<td>
														<div class="">
															<select id="selectedfieldsField" class="form-control" multiple  style="width: 100%"></select>
														</div>
													</td>
													<td style="width: 10%;">
														<div class="col-md-4">
															<!-- <a href="javascript:addJoin();" class="btn dark">
                                                            <i class="fa fa-check"></i> Add Join</a> -->
                                                            <button type="button" onclick="javascript:addJoin();" class="btn blue btn-outline">Add Join</button>
														</div>
													</td>
												</tr>
												</tbody>
											</table>
											
										</div>
									</div>
									
									<div class="form-body">
										<div class="form-group">
											<label class="control-label col-md-3 text-primary">Joins </label>
											<div class="col-md-5">
												<select id="selectedJoinsField" class="form-control"  multiple  style="width: 100%"></select>
											</div>
										</div>
									</div>
									<div class="form-body">
										<div class="form-group" align="center">
											<!-- <a href="javascript:generateQuery();" class="btn dark">
                                                            <i class="fa fa-check"></i> Generate Query</a> -->
                                            <button type="button" onclick="javascript:generateQuery();" class="btn blue btn-outline text-primary">Generate Query</button>
										</div>
									</div>
									<div class="form-body">
										<div class="form-group">
											<label class="control-label col-md-3 text-primary">Generated Query </label>
											<div class="col-md-5">
												<textarea id="queryField" class="form-control" rows="10" style="width: 100%"></textarea>
											</div>
										</div>
									</div>
									<div class="form-body">
										<div class="form-group" align="center">
											<!-- <a href="javascript:generateQuery();" class="btn dark">
                                                            <i class="fa fa-check"></i> Generate Query</a> -->
                                            <button type="button" onclick="javascript:generateResults();" class="btn blue btn-outline">Generate Results</button>
										</div>
									</div>
									<div class="form-body">
										<div class="form-group">
											<label class="control-label col-md-3 text-primary">Results </label>
											<div class="col-md-12">
												<div id="resultsField">
												<div id="loading">
												</div>
														<p></p>
												</div>
													<table id="resultTb" class="display" width="100%"></table>
											</div>
										</div>
									</div>
									
									
									
									
									
									
								</form>
								<!-- END FORM-->
								
							</div>
						</div>
						<!-- END PORTLET-->
					</div>
				</div>
				<!-- END PAGE BASE CONTENT -->
			</div>
			<!-- END CONTENT BODY -->
		</div>
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->
		<a href="javascript:;" class="page-quick-sidebar-toggler"> <i
			class="icon-login"></i>
		</a>
		<div class="page-quick-sidebar-wrapper"
			data-close-on-body-click="false">
			<div class="page-quick-sidebar">
				<ul class="nav nav-tabs">
					<li class="active"><a href="javascript:;"
						data-target="#quick_sidebar_tab_1" data-toggle="tab"> Users <span
							class="badge badge-danger">2</span>
					</a></li>
					<li><a href="javascript:;" data-target="#quick_sidebar_tab_2"
						data-toggle="tab"> Alerts <span class="badge badge-success">7</span>
					</a></li>
					<li class="dropdown"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"> More <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="dropdown-menu pull-right">
							<li><a href="javascript:;"
								data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
									class="icon-bell"></i> Alerts
							</a></li>
							<li><a href="javascript:;"
								data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
									class="icon-info"></i> Notifications
							</a></li>
							<li><a href="javascript:;"
								data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
									class="icon-speech"></i> Activities
							</a></li>
							<li class="divider"></li>
							<li><a href="javascript:;"
								data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
									class="icon-settings"></i> Settings
							</a></li>
						</ul></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active page-quick-sidebar-chat"
						id="quick_sidebar_tab_1">
						<div class="page-quick-sidebar-chat-users" data-rail-color="#ddd"
							data-wrapper-class="page-quick-sidebar-list">
							<h3 class="list-heading">Staff</h3>
							<ul class="media-list list-items">
								<li class="media">
									<div class="media-status">
										<span class="badge badge-success">8</span>
									</div> <img class="media-object"
									src="assets/layouts/layout/img/avatar3.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Bob Nilson</h4>
										<div class="media-heading-sub">Project Manager</div>
									</div>
								</li>
								<li class="media"><img class="media-object"
									src="assets/layouts/layout/img/avatar1.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Nick Larson</h4>
										<div class="media-heading-sub">Art Director</div>
									</div></li>
								<li class="media">
									<div class="media-status">
										<span class="badge badge-danger">3</span>
									</div> <img class="media-object"
									src="assets/layouts/layout/img/avatar4.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Deon Hubert</h4>
										<div class="media-heading-sub">CTO</div>
									</div>
								</li>
								<li class="media"><img class="media-object"
									src="assets/layouts/layout/img/avatar2.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Ella Wong</h4>
										<div class="media-heading-sub">CEO</div>
									</div></li>
							</ul>
							<h3 class="list-heading">Customers</h3>
							<ul class="media-list list-items">
								<li class="media">
									<div class="media-status">
										<span class="badge badge-warning">2</span>
									</div> <img class="media-object"
									src="assets/layouts/layout/img/avatar6.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Lara Kunis</h4>
										<div class="media-heading-sub">CEO, Loop Inc</div>
										<div class="media-heading-small">Last seen 03:10 AM</div>
									</div>
								</li>
								<li class="media">
									<div class="media-status">
										<span class="label label-sm label-success">new</span>
									</div> <img class="media-object"
									src="assets/layouts/layout/img/avatar7.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Ernie Kyllonen</h4>
										<div class="media-heading-sub">
											Project Manager, <br> SmartBizz PTL
										</div>
									</div>
								</li>
								<li class="media"><img class="media-object"
									src="assets/layouts/layout/img/avatar8.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Lisa Stone</h4>
										<div class="media-heading-sub">CTO, Keort Inc</div>
										<div class="media-heading-small">Last seen 13:10 PM</div>
									</div></li>
								<li class="media">
									<div class="media-status">
										<span class="badge badge-success">7</span>
									</div> <img class="media-object"
									src="assets/layouts/layout/img/avatar9.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Deon Portalatin</h4>
										<div class="media-heading-sub">CFO, H&D LTD</div>
									</div>
								</li>
								<li class="media"><img class="media-object"
									src="assets/layouts/layout/img/avatar10.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Irina Savikova</h4>
										<div class="media-heading-sub">CEO, Tizda Motors Inc</div>
									</div></li>
								<li class="media">
									<div class="media-status">
										<span class="badge badge-danger">4</span>
									</div> <img class="media-object"
									src="assets/layouts/layout/img/avatar11.jpg" alt="...">
									<div class="media-body">
										<h4 class="media-heading">Maria Gomez</h4>
										<div class="media-heading-sub">Manager, Infomatic Inc</div>
										<div class="media-heading-small">Last seen 03:10 AM</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="page-quick-sidebar-item">
							<div class="page-quick-sidebar-chat-user">
								<div class="page-quick-sidebar-nav">
									<a href="javascript:;" class="page-quick-sidebar-back-to-list">
										<i class="icon-arrow-left"></i>Back
									</a>
								</div>
								<div class="page-quick-sidebar-chat-user-messages">
									<div class="post out">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar3.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Bob Nilson</a> <span class="datetime">20:15</span>
											<span class="body"> When could you send me the report
												? </span>
										</div>
									</div>
									<div class="post in">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar2.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Ella Wong</a> <span class="datetime">20:15</span>
											<span class="body"> Its almost done. I will be sending
												it shortly </span>
										</div>
									</div>
									<div class="post out">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar3.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Bob Nilson</a> <span class="datetime">20:15</span>
											<span class="body"> Alright. Thanks! :) </span>
										</div>
									</div>
									<div class="post in">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar2.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Ella Wong</a> <span class="datetime">20:16</span>
											<span class="body"> You are most welcome. Sorry for
												the delay. </span>
										</div>
									</div>
									<div class="post out">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar3.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Bob Nilson</a> <span class="datetime">20:17</span>
											<span class="body"> No probs. Just take your time :) </span>
										</div>
									</div>
									<div class="post in">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar2.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Ella Wong</a> <span class="datetime">20:40</span>
											<span class="body"> Alright. I just emailed it to you.
											</span>
										</div>
									</div>
									<div class="post out">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar3.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Bob Nilson</a> <span class="datetime">20:17</span>
											<span class="body"> Great! Thanks. Will check it right
												away. </span>
										</div>
									</div>
									<div class="post in">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar2.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Ella Wong</a> <span class="datetime">20:40</span>
											<span class="body"> Please let me know if you have any
												comment. </span>
										</div>
									</div>
									<div class="post out">
										<img class="avatar" alt=""
											src="assets/layouts/layout/img/avatar3.jpg" />
										<div class="message">
											<span class="arrow"></span> <a href="javascript:;"
												class="name">Bob Nilson</a> <span class="datetime">20:17</span>
											<span class="body"> Sure. I will check and buzz you if
												anything needs to be corrected. </span>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="page-footer-inner">
			2016 &copy; Metronic Theme By <a target="_blank"
				href="http://keenthemes.com">Keenthemes</a> &nbsp;|&nbsp; <a
				href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
				title="Purchase Metronic just for 27$ and get lifetime updates for free"
				target="_blank">Purchase Metronic!</a>
		</div>
		<div class="scroll-to-top">
			<i class="icon-arrow-up"></i>
		</div>
	</div>
	<!-- END FOOTER -->
	<!-- BEGIN QUICK NAV -->
	<nav class="quick-nav">
		<a class="quick-nav-trigger" href="#0"> <span aria-hidden="true"></span>
		</a>
		<ul>
			<li><a
				href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
				target="_blank" class="active"> <span>Purchase Metronic</span> <i
					class="icon-basket"></i>
			</a></li>
			<li><a
				href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/reviews/4021469?ref=keenthemes"
				target="_blank"> <span>Customer Reviews</span> <i
					class="icon-users"></i>
			</a></li>
			<li><a href="http://keenthemes.com/showcast/" target="_blank">
					<span>Showcase</span> <i class="icon-user"></i>
			</a></li>
			<li><a href="http://keenthemes.com/metronic-theme/changelog/"
				target="_blank"> <span>Changelog</span> <i class="icon-graph"></i>
			</a></li>
		</ul>
		<span aria-hidden="true" class="quick-nav-bg"></span>
	</nav>
	<div class="quick-nav-overlay"></div>
	<!-- END QUICK NAV -->
	<!--[if lt IE 9]>
<script src="assets/global/plugins/respond.min.js"></script>
<script src="assets/global/plugins/excanvas.min.js"></script> 
<script src="assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/js.cookie.min.js"
		type="text/javascript"></script>
	<script
		src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script	src="assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js"	type="text/javascript"></script>
	<script src="assets/global/scripts/datatable.js" type="text/javascript"></script>
    <script src="assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
    <script src="assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
    <script src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        	
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="assets/global/scripts/app.min.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets/pages/scripts/components-bootstrap-select.min.js" type="text/javascript"></script>
	<script src="assets/pages/scripts/table-datatables-ajax.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="assets/layouts/layout4/scripts/layout.min.js"
		type="text/javascript"></script>
	<script src="assets/layouts/layout4/scripts/demo.min.js"
		type="text/javascript"></script>
	<script src="assets/layouts/global/scripts/quick-sidebar.min.js"
		type="text/javascript"></script>
	<script src="assets/layouts/global/scripts/quick-nav.min.js"
		type="text/javascript"></script>
	<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>