<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

<style type="text/css">

    .mbskin { padding: 70px 100px; width: 600px; margin: 0 auto; }

</style>

</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

<div class="bodywrap_studio">
	<div class="mbskin">
		<form action="checkPw" method="post">
		<div style="color: #888; font-size: 12px; padding-bottom: 5px; text-align: left;">회원가입 시 등록하신 아이디 입니다.</div>
			<div class="tbl_frm01 tbl_wrap">
				<table>
				<caption>아이디 찾기</caption>
				<tbody>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="id" class="frm_input required "></td>
					</tr>
					<tr>
						<th>질문 선택</th>
						<td>
							<select size="1" name="quiz" style="width:200px;height:20px;">
								<option value="아버지 성함" selected>아버지 성함
								<option value="출신 초등학교">출신 초등학교
								<option value="나의 별명">나의 별명
							</select>
						</td>
					</tr>
					<tr>
						<th>질문 정답</th>
						<td><input type="text" name="reply" class="frm_input required "></td>
					</tr>
				</tbody>
				</table>
			</div>
			<div class="btn_confirm">
				<input type="submit" value="확인" class="btn_submit">
				<a href="login" class="btn_cancel">취소</a>
			</div>
		</form>
	</div>
</div>
<div style="margin:120px;"></div>
<c:import url="../default/footer.jsp"/>

</body>
</html>