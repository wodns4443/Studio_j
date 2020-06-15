<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
		<form action="login">
		<div style="color: #888; font-size: 12px; padding-bottom: 5px; text-align: left;">회원가입 시 등록하신 아이디 입니다.</div>
			<div class="tbl_frm01 tbl_wrap">
				<table>
				<caption>아이디 찾기</caption>
				<tbody>
					<tr>
						<th>아이디</th>
						<td><input type="text" value="${id }" class="frm_input required "></td>
					</tr>
				</tbody>
				</table>
			</div>
			<div class="btn_confirm">
				<input type="submit" value="로그인 이동" class="btn_submit">
				<a href="searchPw" class="btn_cancel">비밀번호 찾기</a>
			</div>
		</form>
	</div>
</div>
<div style="margin:200px;"></div>
<c:import url="../default/footer.jsp"/>

</body>
</html>