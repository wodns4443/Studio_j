<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

  table {
    
    border-top: 1px solid #C6C6C6;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #C6C6C6;
    padding: 10px;
  }

</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<fmt:requestEncoding value="utf-8"/>

<div align="center">
	<h3>예약/문의 글쓰기</h3>
	<form action="write_save" method="post">
		<table style="width:60%;">
			<tr>
				<td style="background-color: #EAEAEA;">이름</td>
				<td><input type="text" name="name" value="${dto.name }" readonly="readonly"></td>
				<td>비밀글 <input type="checkbox" name="secret" value="1">
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">글 비밀번호</td>
				<td colspan="2"><input type="text" name="pw"></td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">이메일</td>
				<td colspan="2"><input type="email" name="email" value="${dto.mail }"></td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">연락처</td>
				<td colspan="2"><input type="text" name="tel" value="${dto.tel }"></td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">제목</td>
				<td colspan="2"><input type="text" name="title"></td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">내용</td>
				<td colspan="2"><textarea rows="15" cols="100" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
				<input type="button" onclick="location.href='inquire'" value = "취소">&nbsp;&nbsp;
				<input type="submit" value="작성 완료">
				</td>
			</tr>
			
		</table>
	</form>
</div>






</body>
</html>