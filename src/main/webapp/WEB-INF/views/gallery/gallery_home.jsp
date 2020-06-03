<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리 | 스튜디오U</title>
<style>
	.thumb img {
		max-width: 100%;
		heigth:auto;
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
<!-- <style>

#modal {
  display:none;
  position:absolute; width:100%; height:100%; z-index:1;
}



#modal button {
  display:inline-block; width:100px; margin-left:calc(100% - 100px - 10px);
}

#modal .modal_content {
  width:300px; margin:100px auto; padding:20px 10px; background:#fff; border:2px solid #666;
}

#modal .modal_layer {
  position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.5); z-index:-1;
}   
</style>
 -->



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
	

	<table style="width:100%;">
		<tr>
		
		<c:forEach items="${imgList }" var="fdto" varStatus="i">
		
		<td width="25%"><button onclick="document.getElementById('modal${i.index}').style.display='block'; document.getElementById('mask').style.display='block'" style="border-color: #00ff0000; border=0; outline=none;"><img id="modal_open" style="cursor:pointer;" src="${pageContext.request.contextPath}/resources/image/fileUpDown/THUMB_${fdto.stored_file_name }"></button></td>
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