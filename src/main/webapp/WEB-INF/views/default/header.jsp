<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css" >
	<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap-theme.css" >
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		a:link { color: white; text-decoration: none;}
		a:visited { color: white; text-decoration: none;}
		a:hover { color: #CC9900; text-decoration: none;}
	</style>
	<style type="text/css">
		ul li{	display:inline;	padding:0 10px; }
	</style>
	<!-- <style>
		header {position:absolute;}
	</style> -->
</head>
<body>
	<header>
	<div style="text-align:right; background-color: black; color: white;">
		<c:if test = '${userId != null}'> <a href="logout">로그아웃</a> </c:if>
		<c:if test = '${userId == null}'> <a href="login">로그인</a> </c:if>
		 | 
		 <c:if test='${userId != null }'> <a href="memberInfo">회원정보</a> </c:if>
		 <c:if test='${userId == null }'> <a href="register">회원가입</a> </c:if>
		  | 유튜브 | 인스타그램
	</div>
	
	
	<div style="background-color: gray;">
		
		<ul>
			<li> <a href="index">STUIDO J 이미지</a></li>
			<li><a href="intro">StudioJ소개</a></li>
			<li><a href="gallery">갤러리</a></li>
			<li><a href="inquire">예약|문의</a></li>
			<li><a href="guide">촬영안내|구매</a></li>
			<li><a href="event">이벤트</a></li>
			<li><a href="map">지점안내</a></li>
			
		</ul>
		<hr>
	</div>
	</header>
</body>
</html>