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
	<div style ="width:60%;text-align:right;">TOTAL ${totContent }</div>

	<table width="60%">
		<tr>
		<th>번호</th><th width="70%">제목</th><th>글쓴이</th><th>조회</th>
		</tr>
		<c:forEach items="${ilist }" var = "dto">
		
		<tr>
			<td align="center">${dto.num}</td>
			<td align="center"><a href="content_pwcheck?num=${dto.num}">${dto.title}</a></td>
			<td align="center">${dto.name}</td>
			<td align="center">${dto.hit}</td>
		</tr>
		</c:forEach>
		
	</table>
	<br>
	<div style ="width:60%;text-align:right;"><button onclick="location.href='write_view'">글쓰기</button></div>

	<div style ="width:60%;text-align:center;a:link { color: black; text-decoration: none;}
		a:visited { color: black; text-decoration: none;}
		a:hover { color: #CC9900; text-decoration: underline;}">
	
		<c:choose>
            <c:when test="${page >1 }">
            	<button type="button" onclick="location.href='inquire?page=${page-1 }'">이전</button>
            </c:when>
            <c:otherwise>
            	<button type="button" disabled="disabled">이전</button>
            </c:otherwise>
         </c:choose>
        
         <c:forEach begin="1" end="${totPage }" step="1" var="cnt">
            <a href="inquire?page=${cnt }">[${cnt }]</a>
          
         </c:forEach>
         
         <c:choose>
            <c:when test="${page <totPage }">
            	<button type = "button" onclick="location.href='inquire?page=${page+1}'">다음</button>
            </c:when>
            <c:otherwise>
            	<button type="button" disabled="disabled">다음</button>
            </c:otherwise>
         </c:choose>
         
         
	</div>
	
	<form action="inquiresearch" method="post">
	<div style ="width:60%;text-align:left;">
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