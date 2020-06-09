<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
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
	<h2 id="container_title">게시글 수정</h2>
	<form action="inquireModifySave" method="post">
	<input type="hidden" name="num" value="${dto.num }">
		<div class="tbl_frm01 tbl_wrap">
		<table>
			<tbody>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="name" value="${userId }" class="frm_input required" readonly="readonly"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email" value="${dto.email }" class="frm_input required"></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text" name="tel" value="${dto.tel }" class="frm_input required"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" value="${dto.title }" class="frm_input required"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" style="width: 700px; height: 300px;">${dto.content }</textarea></td>
				</tr>
			</tbody>
		</table>
		</div>
		
		<div class="btn_confirm">
			<a href="inquire" class="btn_cancel">취소</a>
			<input type="submit" value="수정" class="btn_submit">
		</div>
	</form>
	</section>
</div>

<c:import url="../default/footer.jsp"/>

</body>
</html>