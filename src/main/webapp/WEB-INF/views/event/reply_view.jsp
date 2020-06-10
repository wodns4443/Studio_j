<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>


<div class="bodywrap_studio">
	<section id="bo_w">
	<h2 id="container_title">답글 달기</h2>
	<form action="eventReply" method="post">
	<input type="hidden" name="num" value="${dto.num }">
	<input type="hidden" name="idgroup" value="${dto.idgroup }">
	<input type="hidden" name="step" value="${dto.step }">
	<input type="hidden" name="indent" value="${dto.indent }">
		<div class="tbl_frm01 tbl_wrap">
		<table>
			<tbody>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" value="${userId }" class="frm_input required" readOnly></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" style="width: 700px; height: 300px;"></textarea></td>
				</tr>
			</tbody>
		</table>
		</div>
		
		<div class="btn_confirm">
			<a href="eventContent?num=${dto.num}" class="btn_cancel">취소</a>
			<input type="submit" value="작성완료" class="btn_submit">
		</div>
	</form>
	</section>
</div>

<c:import url="../default/footer.jsp"/>

</body>
</html>