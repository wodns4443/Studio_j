<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {
		max-width: 100%;
		heigth:auto;
	}
	.thumbnail-wrrapper{
		width:25%;
	}
</style>


</head>
<body>
<c:import url="../default/header.jsp"/>
갤러리 홈 
<div class="thumbnail-wrapper" align="center">
	<c:if test="${admin != null }">
	<div align="center">
	
		<button onclick="location.href='imgWriteView'">사진 등록</button>
	</div>
	</c:if>
<div align="center">
	<table>
		<tr>
		
		<c:forEach items="${imgList }" var="fdto">
		
		<td width="25%"><img src="${pageContext.request.contextPath}/resources/image/fileUpDown/THUMB_${fdto.stored_file_name }"></td>
		
		<c:if test="${fdto.bno % 4 == 0 }">
			</tr><tr>
		</c:if>
		</c:forEach>
		
		</tr>
	</table>

</div>

</div>
</body>
</html>