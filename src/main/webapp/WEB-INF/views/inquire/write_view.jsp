<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

<script type="text/javascript">
function checkDisable(form)
{
    if( form.secret.checked == false ){
   form.pw.disabled = true;

} else 

{

   form.pw.disabled = false;

}

}


</script>
<style>


	/* .bodywrap_header { position: static; }
    .standing_point_select { margin-top: 40px; width: 100%; }
	.standing_point_select_title { font-weight: 14px; font-weight: bold; padding-bottom: 5px; }
	.standing_point_select_textarea { width: 100%; padding-bottom: 10px; }
	.standing_point_select_textarea textarea { width: 962px; height: 100px; padding: 20px; resize: none; border: 1px solid #ddd; color: #494848; line-height: 18px; }
	.standing_point_select_chk { color: #494848; }
	.standing_point_select_chk span { cursor: pointer; display: inline-block; }
	.standing_point_select_chk img { margin-right: 5px; width: 15px; vertical-align: sub; }
 */

</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

<fmt:requestEncoding value="utf-8"/>
<div class="bodywrap_studio">
	<section id="bo_w">
	<h2 id="container_title">예약/문의 글쓰기</h2>
	<form action="write_save" method="post">
		<div class="tbl_frm01 tbl_wrap">
		<table>
			<tbody>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="name" value="${userId }" class="frm_input required" readonly="readonly"></td>
					<td>비밀글 <input type="checkbox" name="secret" value="1" onClick="checkDisable(this.form)"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email" value="${dto.mail }" class="frm_input required"></td>
					<td><input type="text" name="pw" value="비밀번호" class="frm_input required" disabled></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td colspan="2"><input type="text" name="tel" value="${dto.tel }" class="frm_input required"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="2"><input type="text" name="title" class="frm_input required"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="2"><textarea name="content" style="width: 700px; height: 300px;"></textarea></td>
				</tr>
			</tbody>
		</table>
		</div>
		
		<div class="btn_confirm">
			<a href="inquire" class="btn_cancel">취소</a>
			<input type="submit" value="작성 완료" class="btn_submit">
		</div>
	</form>
	</section>
</div>

<c:import url="../default/footer.jsp"/>

</body>
</html>