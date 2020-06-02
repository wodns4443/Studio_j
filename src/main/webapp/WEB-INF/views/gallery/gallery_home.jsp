<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.thumb img {
		max-width: 100%;
		heigth:auto;
	}
	.thumbnail-wrrapper{
		width:25%;
	}
</style>
<style>

#modal {
  display:none;
  position:absolute;
  width:100%;
  height:100%;
  z-index:1;
}



#modal button {
  display:inline-block;
  width:100px;
  margin-left:calc(100% - 100px - 10px);
}

#modal .modal_content {
  width:300px;
  margin:100px auto;
  padding:20px 10px;
  background:#fff;
  border:2px solid #666;
}

#modal .modal_layer {
  position:fixed;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background:rgba(0, 0, 0, 0.5);
  z-index:-1;
}   
</style>

<script>
	function popup(name){
		var popimg = document.getElementById("poppop");
		poppop.src = "${pageContext.request.contextPath}/resources/image/fileUpDown/"+name;
        document.getElementById("modal${i.index}").style.display="block";
		console.log(poppop.src);
	}
</script>


</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

갤러리 홈 
<div class="thumbnail-wrapper" align="center">
	<c:if test="${admin != null }">
	<div align="center">
	
		<button onclick="location.href='imgWriteView'">사진 등록</button>
	</div>
	</c:if>
	

	<table width="100%">
		<tr>
		
		<c:forEach items="${imgList }" var="fdto" varStatus="i">
		
		<td width="25%"><img id="modal_open" style="cursor:pointer;" onclick="popup(${fdto.stored_file_name })" src="${pageContext.request.contextPath}/resources/image/fileUpDown/THUMB_${fdto.stored_file_name }"></td>
	
	
		<div id="modal" >
			<div class="modal_content">
			<img id ="poppop"src = "${pageContext.request.contextPath}/resources/image/fileUpDown/${fdto.stored_file_name }">
			<button type="button" id="modal_close">X</button>
			</div>
		
			<div class="modal_layer"></div>
		</div>
		<script>
/*     document.getElementById("modal_open").onclick = function() {
        document.getElementById("modal${i.index}").style.display="block";
    } */
   
    document.getElementById("modal_close").onclick = function() {
        document.getElementById("modal${i.index}").style.display="none";
    }   
</script>
		<c:if test="${fdto.bno % 4 == 0 }">
			</tr><tr>
		</c:if>
		</c:forEach>
		
		</tr>
	</table>
	
	<div id="img-modal">
		<span onclick="imgModalClose();">X</span>
		<img id="img-modal-content">
	</div>


</div>
</body>
</html>