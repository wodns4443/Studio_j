<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>권한 확인 | 스튜디오U</title>

</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

<div id="pw_confirm" align="center">
	
	
	<form action="inquirepwcheck" method="post">
	<table border="1">
	<tr><td>
	
	
             <strong>비밀글 기능으로 보호된 글입니다.</strong>
        작성자와 관리자만 열람하실 수 있습니다. 본인이라면 비밀번호를 입력하세요.

	
	</td></tr>
	<tr>
		<input type="hidden" name = "num" value="${num }">
		비밀번호 : <input type= "text" name ="pw"><br>
		<input type ="submit" value="확인">
	</tr>
	</table>
	</form>
	 
</div>


</body>
</html>