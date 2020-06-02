<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj.css">
	<style>
	.amount { color: #2266BB; font-weight: bold; font-family: Verdana; }
	.c1 { background-color: #94D7E7; }
	.c2 { background-color: #E7F3F7; }
	.head_gallery_details { display: none; border-top: 2px solid #8a6d5a; background-color: #000;
							opacity: 0.8; position: absolute; top: 70px; left: 573px; }
	.head_gallery_details li { display: block !important; width: 130px !important; }
	.head_gallery_details li a { color: #fff; display: block; height: 50px; line-height: 50px; font-size: 16px; }
	.head_gallery_details li a:hover { color: #8a6d5a; }
	.header_text { display: inline-block; width: 0; height: 0;text-indent: -9999px;
					position: absolute; top: 0; left: 0; overflow: hidden; }
	.login_wrap { width: 100%; background-color: #000; padding: 5px 0; }
	.login_header { width: 990px; margin: 0 auto; text-align: right; }
	.login_header span.login_line { color: #FFFFFF; padding: 0 5px; }
	.login_header span a { color: #FFFFFF; font-size: 12px; }
	.studio_view_list { position: absolute; top: 70px; left: 43.5%;background-color: #000; display: none;}
	.studio_view_list ul {width: 120px !important;}
	.studio_view_list li { display: block !important; padding: 0 20px !important; }
	</style>

	<!-- <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css" >
	<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap-theme.css" >
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	 -->
	<style type="text/css">
		.header a:link { color: white; text-decoration: none;}
		.header a:visited { color: white; text-decoration: none;}
		.header a:hover { color: #CC9900; text-decoration: none;}
	</style>
	<style type="text/css">
		.content a:link { color: black; text-decoration: none;}
		.content a:visited { color: black; text-decoration: none;}
		.content a:hover { color: #CC9900; text-decoration: none;}
	</style>
	<style type="text/css">
		ul li{	display:inline;	padding:0 10px; }
	</style>
	<style>
		header {position:absolute;}
	</style>
</head>
<body>


	<div class="bodywrap_header">
		<div class="login_wrap">
			<div class="login_header">

				<c:if test='${userId != null}'>
					<span><a href="logout">로그아웃</a></span>
				</c:if>
				<c:if test='${userId == null}'>
					<span><a href="login">로그인</a></span>
				</c:if>
				<span class="login_line">|</span>
				<c:if test='${userId != null }'>
					<span><a href="memberInfo">회원정보</a></span>
				</c:if>
				<c:if test='${userId == null }'>
					<span><a href="register">회원가입</a></span>
				</c:if>
				<span class="login_line">|</span>
				<span><a href="#">유튜브</a></span>
				<span class="login_line">|</span>
				<span><a href="#">인스타그램</a></span>
			</div>
		</div>

		<div id="header_1">
			<ul>
				<li class="header_logo">
					<a href="index">
					<img src="${pageContext.request.contextPath}/resources/image/logo_w.png" style="width: 120px; height: 55px;">
					</a></li>
				<li><a href="intro" style="color: #999; font-size: 20px;">StudioJ소개</a></li>
				<li><a href="gallery" style="color: #999; font-size: 20px;">갤러리</a></li>
				<li><a href="inquire" style="color: #999; font-size: 20px;">예약&middot;문의</a></li>
				<li><a href="guide" style="color: #999; font-size: 20px;">촬영안내&middot;구매</a></li>
				<li><a href="event" style="color: #999; font-size: 20px;">이벤트</a></li>
				<li><a href="map" style="color: #999; font-size: 20px;">지점안내</a></li>
			</ul>
			<hr>
		</div>
	</div>
	
	
</body>
</html>