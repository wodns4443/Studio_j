<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리 | 스튜디오U</title>
<style>
	img {
		display:block;
		margin:0;
		padding:0;
	}
	table , td{
		 margin:0;padding:0;border-collapse:collapse; border-spacing:0;
	}

	.thumbnail-wrrapper{
		width:25%;
	}
	
	.modalDiv{display:none;
	cursor: pointer; 
	 top: 5%;
	 position:fixed; z-index: 10000; overflow: auto; padding: 0px; left: 50%;transform:translateX(-50%);}
	#mask {   position: fixed;
        width: 100%;
        height: 1000px;
        top: 0px;
        left: 0px;
         display: none; 
         background-color:#000;
         opacity: 0.8; }

	
</style>




</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>


<div class="thumbnail-wrapper" align="center">
	<div>
		<img src="${pageContext.request.contextPath}/resources/image/gallery.png">
	</div>
	<br>
	<br>
	<c:if test="${admin != null }">
	<div align="center">
	
		<button onclick="location.href='imgWriteView'">사진 등록</button>
	</div>
	</c:if>
	

	<table>
		<tr>
		
		<c:forEach items="${imgList }" var="fdto" varStatus="i">
		
		<td width="25%"><button onclick="document.getElementById('modal${i.index}').style.display='block'; document.getElementById('mask').style.display='block'" style="border-color: #00ff0000; border=0; outline=none;"><img style="cursor:pointer;" src="${pageContext.request.contextPath}/resources/image/fileUpDown/THUMB_${fdto.stored_file_name }"></button></td>
		<%--  --%>
	
		<div class ="modalDiv" align="center" id="modal${i.index }" onclick="document.getElementById('modal${i.index}').style.display='none'; document.getElementById('mask').style.display='none'">
			
			<img width="auto" height="750" src = "${pageContext.request.contextPath}/resources/image/fileUpDown/${fdto.stored_file_name }">
				
		</div>
		<div id = "mask"></div>
		

		<c:if test="${fdto.bno % 4 == 0 }">
			</tr><tr>
		</c:if>
		</c:forEach>
		
		</tr>
	</table>
	



</div>
</body>
</html>