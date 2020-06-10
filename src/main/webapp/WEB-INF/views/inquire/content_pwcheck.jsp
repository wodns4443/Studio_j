<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>권한 확인 | 스튜디오U</title>
<link rel="stylesheet" href="http://studiou.co.kr/theme/basic/css/default_shop.css?ver=161020">
<link rel="stylesheet" href="http://studiou.co.kr/skin/member/basic/style.css?ver=161020">
<style>
    .mbskin .btn_confirm a {
        display: block;
        width: 50px;
        border: 1px solid #ddd;
        border-radius: 3px;
        padding: 5px 10px;
        margin: 25px auto;
        background-color: #f7f7f7;
    }
</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>



	<div id="pw_confirm" class="mbskin">
    <h1>남자바디프로필 촬영 문의</h1>
    <p>
                <strong>비밀글 기능으로 보호된 글입니다.</strong>
        작성자와 관리자만 열람하실 수 있습니다. 본인이라면 비밀번호를 입력하세요.
            </p>

    <form name="fboardpassword" action="inquirepwcheck" method="post">
    		<input type="hidden" name = "num" value="${num }">


    <fieldset>
        <label for="pw_wr_password">비밀번호<strong class="sound_only">필수</strong></label>
        <input type="password" name="pw" id="password_wr_password" required="" class="frm_input required" size="15" maxlength="20">
        <input type="submit" value="확인" class="btn_submit">
    </fieldset>
    </form>

    <div class="btn_confirm">
        <a href="inquire">돌아가기</a>
    </div>

</div>



</body>
</html>