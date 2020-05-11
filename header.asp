<!--#include file="config.asp"-->
<%
	username = Session("username")
%>
<html>
<head>

	<style type="text/css"> 
		
	
	</style>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <Meta name="charset" CONTENT="ISO-8859-1">

    <title>Başlık</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<!-- Js -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


	<!-- Font -->

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">

	<script src="https://kit.fontawesome.com/3744c2ceff.js" crossorigin="anonymous"></script>

	<!-- Stylesheets -->

	<link href="common-css/bootstrap.asp" rel="stylesheet">

	<link href="common-css/ionicons.asp" rel="stylesheet">


	<link href="layout-1/css/styles.asp" rel="stylesheet">

	<link href="layout-1/css/responsive.asp" rel="stylesheet">

</head>

<body >

<%
if Session("username")="alp" Then
%>

	<header>
		<div class="container-fluid position-relative no-side-padding">

			<a href="#" class="logo">Başlık</a>

			<div class="menu-nav-icon" data-nav-menu="#main-menu"><i class="ion-navicon"></i></div>

			<ul class="main-menu visible-on-click" id="main-menu">
				<li><a href="index.asp">Anasayfa</a></li>
				<li><a href="profile.asp">Profil</a></li>
				<li><a href="liked.asp">Favoriler</a></li>
			</ul><!-- main-menu -->

			<div class="src-area">
				<ul class="main-menu visible-on-click" id="main-menu">
				<li><a href="add.asp" style="color: green;">Post Ekle</a></li>
				<li><a href="update.asp" style="color: red;">Yönetim</a></li>
				<li><a href="logout.asp">Çıkış</a></li>
			</ul><!-- main-menu -->
			</div>

		</div><!-- conatiner -->
	</header>



<%	
elseif Session("username")="" Then
Response.Redirect("register.asp") 
	
%>


<%
Else
%>	

<header>
		<div class="container-fluid position-relative no-side-padding">

			<a href="#" class="logo">Başlık</a>

			<div class="menu-nav-icon" data-nav-menu="#main-menu"><i class="ion-navicon"></i></div>

			<ul class="main-menu visible-on-click" id="main-menu">
				<li><a href="index.asp">Anasayfa</a></li>
				<li><a href="profile.asp">Profil</a></li>
				<li><a href="liked.asp">Favoriler</a></li>
			</ul><!-- main-menu -->

			<div class="src-area">
				<ul class="main-menu visible-on-click" id="main-menu">
				<li><a href="add.asp" style="color: green;">Post Ekle</a></li>
				<li><a href="logout.asp">Çıkış</a></li>
			</ul><!-- main-menu -->
			</div>

		</div><!-- conatiner -->
	</header>


<%	
end if
%>