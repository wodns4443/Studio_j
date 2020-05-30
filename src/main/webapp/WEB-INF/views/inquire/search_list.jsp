<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

  table {
    
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }

</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div align="center">
	<div style ="width:70%;text-align:right;">TOTAL ${totContent }</div>

	<table width="70%">
		<tr>
		<th>번호</th><th width="70%">제목</th><th>글쓴이</th><th>조회</th>
		</tr>
		<c:forEach items="${slist }" var = "sdto">
		<tr>
			<td align="center">${sdto.num}</td>
			<td><a href="content_pwcheck?num=${sdto.num}">${sdto.title}</a></td>
			<td align="center">${sdto.name}</td>
			<td align="center">${sdto.hit}</td>
		</tr>
		</c:forEach>
		
	</table>
		<br>
	
	<div style="width:70%;text-align: right;">
		<button onclick="location.href='inquire'">목록</button>
	</div>
	<br>
	
	<form action="inquiresearch" method="post">
	<div style ="width:70%;text-align:left;">
		<select name="searchType">
			<option value="title">제목</option>
			<option value="content">내용</option>
			<option value="name">작성자</option>
		</select>
		<input type="text" name="searchValue">&nbsp;
		<input type ="submit" value="검색">
	</div>
	</form>
	</div>
</body>
</html>