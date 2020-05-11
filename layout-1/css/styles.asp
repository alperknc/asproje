
/*
====================================================

* 	[Master Stylesheet]
	
	Theme Name :  
	Version    :  
	Author     :  
	Author URI :  

====================================================
<style type="text/css"> 

/* ---------------------------------
1. PRIMARY STYLES
--------------------------------- */

<style type="text/css"> 

html{ font-size: 100%; height: 100%;  overflow-x: hidden; touch-action: manipulation; }

body{ font-size: 15px; font-family: 'Roboto', sans-serif; width: 100%; height: 100%; margin: 0; font-weight: 300;
	-webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; word-wrap: break-word; 
	background: #EDF3F3; color: #000; }

h1, h2, h3, h4, h5, h6, p, a, ul, span, li, img{ margin: 0; padding: 0; font-weight: 300; }

h1,h2,h3,h4,h5,h6{ line-height: 1.5; }

p{ line-height: 1.6; font-family: 'Maven Pro', sans-serif; font-weight: 400; color: #444; }

h1{ font-size: 4em; line-height: 1; }
h2{ font-size: 2.8em; line-height: 1.1; }
h3{ font-size: 2em; }
h4{ font-size: 1.2em; }
h5{ font-size: 1.1em; }
h6{ font-size: .9em; letter-spacing: 1px; }

a, button{ display: inline-block; text-decoration: none; color: inherit; transition: all .3s; }

a:focus, a:active, a:hover,
button:focus, button:active, button:hover{ text-decoration: none; color: #498BF9; }

b{ font-weight: 500; }

img{ width: 100%; }

li{ list-style: none; display: inline-block; }

span{ display: inline-block; }

header{ font-weight: 400; }



/* ---------------------------------
2. COMMONS FOR PAGE DESIGN
--------------------------------- */

.section{ padding: 70px 0 40px; }

.section .heading{ padding-bottom: 70px; }

.center-text{ text-align: center; } 

.color-white{ color: #fff; }

.display-table{ display: table; height: 100%; width: 100%; }

.display-table-cell{ display: table-cell; vertical-align: middle; }

.card{ background: transparent; border: 0; }

.no-side-padding{ padding-right: 0px; padding-left: 0px; }

.no-left-padding{ padding-left: 0px; }

.no-right-padding{ padding-right: 0px; }

.icon{ font-size: 2em; }


::-webkit-input-placeholder { font-size: .9em; letter-spacing: 1px; }

::-moz-placeholder { font-size: .9em; letter-spacing: 1px; }

:-ms-input-placeholder { font-size: .9em; letter-spacing: 1px;  }

:-moz-placeholder { font-size: .9em; letter-spacing: 1px;  }



/* ---------------------------------
3. MENU
--------------------------------- */

header{ overflow: hidden; background: #fff; box-shadow: 0px 2px 10px rgba(0,0,0, .3); }

header .logo{ float: left; height: 20px; margin: 20px 30px; }

header .logo img{ height: 100%; width: auto; }


header .main-menu{ display: inline-block; float: left; }

header .main-menu > li{ float: left; }

header .main-menu > li > a{ height: 60px; line-height: 60px; padding: 0 25px; border-right: 1px solid #eee; }

header .main-menu > li > a:hover{  background: #eee; }

header .main-menu > li:first-child > a{ border-left: 1px solid #eee; }


header .visible.main-menu{ display: block; }



/* SEARCH AREA */

header .src-area{ position: relative; height: 60px; width: 50%; float: right; display: inline-block; background: #F5F7F6; }

header .src-area .src-input{ position: absolute; top: 0; bottom: 0; left: 0; right: 0; width: 100%;
	padding: 0 20px 0 70px; background: transparent; border: 0; outline: 0; }

header .src-area .src-input:focus{ box-shadow: 0px 0px 1px #aaa; }

header .src-area .src-btn{ position: absolute; top: 0; bottom: 0; left: 0; width: 40px; background: none; border: 0; 
	font-size: 1.2em; outline: 0; margin-left: 20px; opacity: .6; cursor: pointer; z-index: 10; }


/* NAV ICON */

.menu-nav-icon{ display: none; height: 60px; width: 50px; text-align: center; line-height: 60px; cursor: pointer; 
	position: absolute; right: 0; font-size: 1.8em; }

	

/* ---------------------------------
4. SLIDER
--------------------------------- */

.slider{ height: 300px; width: 100%; background-image: url(../../images/slider-1.jpg); background-size: cover; }  
 

 
/* ---------------------------------
5. SINGLE POST
--------------------------------- */

.blog-area .row div[class^="col"] { margin-bottom: 30px; }

.blog-area{ text-align: center; background: #EDF3F3; }

.blog-area .single-post{ height: 100%; position: relative; padding-bottom: 45px;
	overflow: hidden; box-shadow: 0px 0px 5px rgba(0,0,0,.1); border: 1px solid #ddd; background: #fff; }

.blog-area .single-post .title{ padding: 20px 30px 30px; }

.single-post .avatar{ margin: 0 auto; margin-top: -40px; width: 70px; height: 70px; overflow: hidden; z-index: 10;
	border-radius: 100px; position: relative; border: 7px solid #fff; box-shadow: 0px 0px 10px rgba(0,0,0,.2); }

.single-post .post-footer{ position: absolute; bottom: 0; left: 0; right: 0; text-align: center; }

.single-post .post-footer > li{ width: 33.33%; display: inline-block; border-right: 1px solid #fff; background: #EDF3F3; }

.single-post .post-footer > li:first-child{ float: left; }

.single-post .post-footer > li:last-child{ border: 0px; float: right; }

.single-post .post-footer > li > a{ line-height: 45px; width: 100%; }

.single-post .post-footer i{ display: inline-block; margin-right: 10px; opacity: .6; font-size: 1.1em; }


/* ---------------------------------
6. NORMAL BLOG
--------------------------------- */

.post-style-1 .blog-image{ max-height: 200px; overflow: hidden; }



/* ---------------------------------
7. EXTRA BIG BLOG
--------------------------------- */

.blog-area .post-style-2{ padding-bottom: 0; text-align: left; }

.blog-area .post-style-2 .title{ padding: 15px 0px 20px; }

.post-style-2 .avatar-area{ padding: 25px 0 15px; position: relative; }

.post-style-2 .avatar{ margin: 0px; }
	
.post-style-2 .avatar-area .right-area{ margin-left: 90px; position: absolute; top: 50%; transform: translateY(-50%); }

.post-style-2 .blog-image{ width: 50%; float: left; height: 100%; }

.post-style-2 .blog-image img{ height: 100%; width: 100%; }

.post-style-2 .blog-info{ width: 50%; float: left; height: 100%; position: relative; padding: 30px; padding-bottom: 45px; }



/* ---------------------------------
8. EXTRA MEDIUM BLOG
--------------------------------- */

.post-style-2.post-style-3 .blog-info{ width: 100%; float: none; }



/* ---------------------------------
9. EXTRA SMALL BLOG
--------------------------------- */

.blog-area .post-style-4{ margin-bottom: 30px; }

.display-table .display-table-cell.title{ padding: 30px; }

.load-more-btn{ padding: 15px 40px; margin: 10px 0 30px; transition: all .3s; box-shadow: 0px 0px 2px rgba(0,0,0,.4);
	background: #C3D8F5; }

.load-more-btn:hover{ transform: translateY(-2px); box-shadow: 5px 10px 20px rgba(0,0,0,.3); } 



/* ---------------------------------
10. FOOTER
--------------------------------- */

footer{ padding: 70px 0 30px; background: #fff; }

footer .footer-section{ margin-bottom: 40px; }

footer .footer-section .title{ margin-bottom: 20px; }

footer .footer-section ul > li{ margin-right: 10px; margin-top: 10px; }


footer .copyright{ margin: 10px 0; }


footer .icons > li > a{ height: 40px; width: 40px; border-radius: 40px; line-height: 40px; text-align: center; 
	transition: all .3s; font-size: 1.2em; box-shadow: 0px 0px 2px rgba(0,0,0,1); background: #498BF9; color: #fff; }

footer .icons > li > a:hover{ transform: translateY(-2px); box-shadow: 5px 10px 20px rgba(0,0,0,.3); }


footer .input-area{ position: relative; height: 50px; width: 100%; box-shadow: 0px 0px 1px #bbb; background: #F5F7F6; }

footer .input-area .email-input{ position: absolute; top: 0; bottom: 0; left: 0; right: 0; width: 100%;
	padding: 0 70px 0 20px; background: transparent; border: 0; outline: 0; }

footer .input-area .email-input:focus{ box-shadow: 0px 0px 1px #aaa; }

footer .input-area .submit-btn{ position: absolute; top: 0; bottom: 0; right: 0; width: 50px; background: none; 
	border: 0; outline: 0; margin-right: 10px; opacity: .8; cursor: pointer; transition: all .2s; }



</style>