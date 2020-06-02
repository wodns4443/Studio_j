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
<c:import url="../default/header2.jsp"/>

<div align="center">
	<h3>이벤트 글쓰기</h3>
	<form action="event_write_save" method="post">
		<table style="width:60%;">
			<tr>
				<td style="width:10%;background-color: #EAEAEA;text-align: center;">제목</td>
				<td colspan="2"><input type="text" name="title" style="width:90%;"></td>
			</tr>
			<tr>
				<td style="width:10%;background-color: #EAEAEA;text-align: center;">내용</td>
				<td colspan="2"><textarea rows="35"  name="content" style="width:90%;"></textarea></td>
			</tr>
		</table>
		<br>
			<div style="text-align: center;">
				
				<input type="button" onclick="location.href='event'" value = "취소">&nbsp;&nbsp;
				<input type="submit" value="작성 완료">
				
			</div>
		
		
	
	</form>

</div>

</body>
</html>