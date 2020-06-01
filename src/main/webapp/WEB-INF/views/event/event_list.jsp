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

<div class="content" align="center">
	<h2>이벤트</h2>
	
	<table width="60%">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
			<th>조회</th>
		</tr>
		<c:forEach items="${elist }" var= "dto">
		
		
		<tr>
			<td align="center">${dto.num}</td>
			<td align="center"><a href="eventContent?num=${dto.num}">${dto.title}</a></td>
			<td align="center">${dto.name}</td>
			<td align="center"><fmt:formatDate value="${dto.savedate}" pattern="yyyy-MM-dd" /></td>
			<td align="center">${dto.hit}</td>
			
		</tr>
		</c:forEach>
		
		
	</table>
	 <c:if test="${admin !=null }">
	 <br>
	 <div style="width:60%; text-align: right;">
         	<button onclick="location.href='event_write'">글쓰기</button>
     </div>
     </c:if>
	
	<br>
	<div style ="width:60%;text-align:center;a:link { color: black; text-decoration: none;}
		a:visited { color: black; text-decoration: none;}
		a:hover { color: #CC9900; text-decoration: underline;}">
	
		<c:choose>
            <c:when test="${page >1 }">
            	<button type="button" onclick="location.href='event?page=${page-1 }'">이전</button>
            </c:when>
            <c:otherwise>
            	<button type="button" disabled="disabled">이전</button>
            </c:otherwise>
         </c:choose>
        
         <c:forEach begin="1" end="${totPage }" step="1" var="cnt">
            <a href="event?page=${cnt }">[${cnt }]</a>
          
         </c:forEach>
        
         
         <c:choose>
            <c:when test="${page <totPage }">
            	<button type = "button" onclick="location.href='event?page=${page+1}'">다음</button>
            </c:when>
            <c:otherwise>
            	<button type="button" disabled="disabled">다음</button>
            </c:otherwise>
         </c:choose>
        
         
	</div>
	
</div>

</body>
</html>