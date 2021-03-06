<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스튜디오U</title>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css">
	<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
	<style>
	.mySlides {display:none}
	.w3-left, .w3-right, .w3-badge {cursor:pointer}
	.w3-badge {height:13px;width:13px;padding:0}
	</style>
	
</head>
<body>
	<c:import url="../default/header.jsp"/>

	<div id="bodywrap_studio" style="width: 100%; height: 786px;">
	
	<div class="w3-content w3-display-container" style="max-width: 100%">
		<img class="mySlides" src="${pageContext.request.contextPath}/resources/image/homeImg/Home1.jpg" style="width: 100%; height: 786px;">
		<img class="mySlides" src="${pageContext.request.contextPath}/resources/image/homeImg/Home2.jpg" style="width: 100%; height: 786px;">
		<img class="mySlides" src="${pageContext.request.contextPath}/resources/image/homeImg/Home3.jpg" style="width: 100%; height: 786px;">
		<img class="mySlides" src="${pageContext.request.contextPath}/resources/image/homeImg/Home4.jpg" style="width: 100%; height: 786px;">
		<img class="mySlides" src="${pageContext.request.contextPath}/resources/image/homeImg/Home5.jpg" style="width: 100%; height: 786px;">
		<img class="mySlides" src="${pageContext.request.contextPath}/resources/image/homeImg/Home6.jpg" style="width: 100%; height: 786px;">
		<div
			class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle"
			style="width: 100%">
			<!-- 버튼 스크립트 <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
			<div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
			<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
			<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
			<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
			<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(4)"></span>
			<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(5)"></span>
			<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(6)"></span> -->
		</div>
	</div>
	</div>
	<c:import url="../default/footer.jsp"/>

	<script>
	var myIndex = 0;
	carousel();
	
	function carousel() {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";  
	  }
	  myIndex++;
	  if (myIndex > x.length) {myIndex = 1}    
	  x[myIndex-1].style.display = "block";  
	  setTimeout(carousel, 2000); // Change image every 2 seconds
	}
	</script>

<!-- 버튼으로 넘기기	<script type="text/javascript">
	var slideIndex = 1;
	showDivs(slideIndex);

	function plusDivs(n) {
	  showDivs(slideIndex += n);
	}

	function currentDiv(n) {
	  showDivs(slideIndex = n);
	}

	function showDivs(n) {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("demo");
	  if (n > x.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = x.length}
	  for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";  
	  }
	  for (i = 0; i < dots.length; i++) {
	    dots[i].className = dots[i].className.replace(" w3-white", "");
	  }
	  x[slideIndex-1].style.display = "block";  
	  dots[slideIndex-1].className += " w3-white";
	  
	}
	</script> -->
	

	
</body>
</html>