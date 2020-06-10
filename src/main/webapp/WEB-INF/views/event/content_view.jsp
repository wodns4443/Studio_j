<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 | 스튜디오U</title>
<link rel="stylesheet" href="http://studiou.co.kr/theme/basic/css/default_shop.css?ver=161020">
<link rel="stylesheet" href="http://studiou.co.kr/skin/board/studioReserve/style.css?ver=161020">


</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>


<div align="center">
	<div style="width:50%;text-align: center;">
			
			<div style="text-align: center;"><h2>${dto.title }</h2></div>
			
			<br>
			<br>
			<div style="border-bottom:1px solid #BDBDBD; text-align: center;">작성자&nbsp;&nbsp; <b>${dto.name }</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${dto.savedate}" pattern="yyyy-MM-dd" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조회 ${dto.hit }회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글 ${dto.replyhit }건</div>
			
			<br>
			<br>
			
			<div style="text-align: center;">
			<textarea rows="25" cols="100" name="content" readonly="readonly" style="text-align:center; border-color: white; outline-style: none;">${dto.content }</textarea>
			</div>
			
			<br>
			<br>
			<br>
			
			<div>
				<c:if test="${admin!=null }">
			
				<div style="width:50%; float:left; text-align: left">
					<a href="eventModify?num=${dto.num}" class="btn_b01">수정</a> &nbsp;&nbsp;
					<a href="eventDel?num=${dto.num}" class="btn_b02">삭제</a>
				</div>
				</c:if>
				<div style="width:50%; float:right; text-align: right;">
					<a href="event" class="btn_b01">목록</a> &nbsp;&nbsp;
					<a href="eventReplyView?num=${dto.num}" class="btn_b02">답글달기</a>
				
				
				</div>
			</div>
		
		<br>
		<br>
		<br>
		
		<section id="bo_vc">
    <h2>댓글목록</h2>
    <c:forEach items="${relist }" var = "redto">
    
    <article id="c_101">
        <header style="z-index:2">
            <!-- <h1>스튜디오u님의 댓글</h1> -->
            <span style="font-weight: bold;">${redto.name }</span>
                       
             
        <c:if test="${redto.name.equals(userId) || admin!=null}">
            <span class="bo_vc_hdinfo">
			<button onclick="location.href='replyDel?num=${redto.num}&&idgroup=${redto.idgroup }'">삭제</button>
		</span>
		</c:if>
                
         </header>

        <!-- 댓글 출력 -->
        <p>
                 ${redto.content }      
		</p>
    </article>
   	</c:forEach>
        
</section>
		
		
		
		
	
	</div>	
</div>
	
<c:import url="../default/footer.jsp"/>

</body>
</html>