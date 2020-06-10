<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 등록 | 스튜디오U</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>

</head>

<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

<div class="bodywrap_studio">
	<section id="bo_w">
	<h2 id="container_title">예약/문의 글쓰기</h2>
	<form name="writeForm" action="imgWrite" method="post" enctype="multipart/form-data">
		<div class="tbl_frm01 tbl_wrap">
		<table>
			<tbody>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="name" value="${userId }" class="frm_input required" readonly="readonly"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" id="title" name="title" class="frm_input required"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea id="content" name="content" style="width: 700px; height: 200px;"></textarea></td>
				</tr>
				<tr>
					<th>파일</th>
					<td><input type="file" name="file"></td>
				</tr>
				
				
			</tbody>
		</table>
		</div>
		
		<div class="btn_confirm">
			<a href="gallery" class="btn_cancel">취소</a>
			<input type="submit" value="작성 완료" class="btn_submit">
		</div>
	</form>
	</section>
</div>







</body>
</html>