<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path=request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<%=basePath%>font/css/main.css" rel="stylesheet" type="text/css" />

<title></title>

<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" />
<link href="<%=basePath%>font/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>font/css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="jquery.mCustomScrollbar.css" />




<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%=basePath%>js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="<%=basePath%>js/modernizr.2.5.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/templatemo_script.js"></script>



<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="<%=basePath%>font/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>font/css/magnific-popup.css" rel="stylesheet" />

<link href="<%=basePath%>font/css/dynamic_function.css" rel="stylesheet" type="text/css" />


<script>
        	$(document).ready(function () {
            $body = (window.opera) ? (document.compatMode == "CSS1Compat" ? $('html') : $('body')) : $('html,body');// 这行是 Opera 的补丁, 少了它 Opera 是直接用跳的而且画面闪烁 by willin

            $('#part1').click(function () {
                $body.animate({ scrollTop: $('#main').offset().top }, 1000);
                return false;// 返回false可以避免在原链接后加上#
            });
            $('#part2').click(function () {
                $body.animate({ scrollTop: $('#introduction').offset().top }, 1000);
                return false;// 返回false可以避免在原链接后加上#
            });
            $('#part3').click(function () {
                $body.animate({ scrollTop: $('#function').offset().top }, 1000);
                return false;// 返回false可以避免在原链接后加上#
            });

        });
    </script>



</head>

<body>
	<form id="form1" runat="server">

		<nav id="main_menu">
			<a id="part1" href="main.jsp#main">系统主页</a> <a id="part2"
				href="main.jsp#introduction">公寓概况</a> <a id="part3"
				href="main.jsp#function">功能板块</a>
		</nav>
		<div id="main">
			<div class="container" id="container_main">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-lg-3"></div>
						<div class="col-lg-6">
							<img src="<%=basePath%>images/logo.png" class="col-lg-12" />
							<div class="col-lg-3"></div>
							<% String username = "";
								username =(String)ActionContext.getContext().getSession().get("username"); %>
							<%if(username=="" || username==null) {%>
							<a href='Login_index.jsp'  id='login' class='btn btn-default col-lg-6'>登录/注册</a>
							<% username="游客";}%>
							<Label ID="cont">欢迎你 <Label>
							<%= username %>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="introduction">
			<div class="container" id="container_introduction">
				<div class="row">
					<div class="col-lg-1"></div>
					<div class="col-lg-10">
						<div id="img_dynamic">

							<div id="carousel-example-generic" class="carousel slide"
								data-ride="carousel">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<li data-target="#carousel-example-generic" data-slide-to="0"
										class="active"></li>
									<li data-target="#carousel-example-generic" data-slide-to="1"></li>
									<li data-target="#carousel-example-generic" data-slide-to="2"></li>
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<a href="http://xsc.xmu.edu.cn/s/122/t/377/p/13/list.htm"
											target="_blank"> <img style="height: 532px" src="<%=basePath%>images/main_background.jpg" alt="..." /></a>
										<div class="carousel-caption">厦门大学</div>
									</div>
									<div class="item">
										<a href="http://xsc.xmu.edu.cn/s/122/t/377/p/13/list.htm"
											target="_blank"> <img style="height: 532px;width: 950px" src="<%=basePath%>images/pic1.jpg" alt="..." /></a>
										<div class="carousel-caption">芙蓉宿舍</div>
									</div>
									<div class="item">
										<a href="http://xsc.xmu.edu.cn/s/122/t/377/p/13/list.htm"
											target="_blank"> <img src="<%=basePath%>images/3.jpg" alt="..." /></a>
										<div class="carousel-caption">海韵宿舍</div>
									</div>
								</div>

								<!-- Controls -->
								<a class="left carousel-control"
									href="#carousel-example-generic" role="button"
									data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="right carousel-control"
									href="#carousel-example-generic" role="button"
									data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right"></span> <span
									class="sr-only">Next</span>
								</a>
							</div>
						</div>

						<div id="introduction_text">
							<p>厦大公寓简介</p>
						</div>
				<!-- 		<div id="btn_introduction">
							<nav id="intro">
								<a href="#">公寓概况</a> <a href="#">学院分布</a> <a href="#">内部构架</a> <a
									href="#">公寓管理</a>
							</nav>

						</div> -->
					</div>
				</div>
			</div>
		</div>



		<div id="function">
			<div class="content-container">
				<div id="portfolio-content" class="center-text">
					<div class="portfolio-page" id="page-1">

						<div class="portfolio-group">
							<a class="portfolio-item" href="<%=basePath%>font/font_repair.jsp"> <img
								src="<%=basePath%>images/fun1.jpg" alt="image 1" />
								<div class="detail">
									<h1 class="funch">上门维修</h1>
								</div>
							</a>
						</div>

						<div class="portfolio-group">
							<a class="portfolio-item" href="<%=basePath%>font/water_electrcity.jsp"> <img
								src="<%=basePath%>images/fun2.jpg" alt="image 1" />
								<div class="detail">
									<h1 class="funch">水电查询</h1>
								</div>
							</a>
						</div>

						<div class="portfolio-group">
							<a class="portfolio-item" href="<%=basePath%>font/lost-thing_index.aspx"> <img
								src="<%=basePath%>images/fun3.jpg" alt="image 1" />
								<div class="detail">
									<h1 class="funch">失物招领</h1>
								</div>
							</a>
						</div>
						<br />

						<div class="portfolio-group">
							<a class="portfolio-item" href="<%=basePath%>font/help_take.aspx"> <img
								src="<%=basePath%>images/fun4.jpg" alt="image 1" />
								<div class="detail">
									<h1 class="funch">待取快递</h1>
								</div>
							</a>
						</div>

						<div class="portfolio-group">
							<a class="portfolio-item" href="<%=basePath%>font/message-board_index.jsp"> <img
								src="<%=basePath%>images/fun5.jpg" alt="image 1" />
								<div class="detail">
									<h1 class="funch">留言板块</h1>
								</div>
							</a>
						</div>


						<!--翻页-->
						<!--
                        <div class="pagination">
                            <ul class="nav">
                                <li class="active">1</li>
                                
					        <li>2</li>
					        <li>3</li>
                            
                            </ul>
                        </div>
                            -->
					</div>
				</div>

			</div>

		</div>

	</form>
</body>
</html>
