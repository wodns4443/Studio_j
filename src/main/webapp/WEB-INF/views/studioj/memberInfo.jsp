<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

<style type="text/css">
	.bodywrap_header { position: static; }
    .mbskin { padding: 70px 100px; width: 600px; margin: 0 auto; }
</style>

</head>
<body>

<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

<div class="bodywrap_studio">
	<div class="mbskin">
		<form id="fo" action="upData">
		<div style="color: #888; font-size: 12px; padding-bottom: 5px; text-align: left;">아래의 * 표시는 필수 정보 이오니 기입 바랍니다</div>
			<div class="tbl_frm01 tbl_wrap">
				<table>
				<caption>회원 정보</caption>
				<tbody>
					<tr>
						<th>아이디</th><td><input type="text" name="id" value="${dto.id }" class="frm_input required " readonly></td>
					</tr>
					<tr>
						<th>비밀번호</th><td><input type="text" name="pw" value="${dto.pw }" class="frm_input required "></td>
					</tr>
					<tr>
						<th>이름</th><td><input type="text" name="name" value="${dto.name }" class="frm_input required "></td>
					</tr>
					<tr>
						<th>전화번호</th><td><input type="text" name="tel" value="${dto.tel }" class="frm_input required "></td>
					</tr>
					<tr>
						<th>메일</th><td><input type="text" name="mail" value="${dto.mail }" class="frm_input required "></td>
					</tr>
				</tbody>
				</table>
			</div>
			<div class="btn_confirm">
				<input type="button" value="수정" onclick="submit();" class="btn_submit">
				<!-- <input type="submit" value="수정" class="btn_submit"> -->
				<input type="button" value="삭제" onclick="location.href='delete?id=${dto.id}'" class="btn_submit">
				<a href="index" class="btn_cancel">취소</a>
			</div>
		</form>
	</div>
</div>
	
<c:import url="../default/footer.jsp"/>

</body>
</html>