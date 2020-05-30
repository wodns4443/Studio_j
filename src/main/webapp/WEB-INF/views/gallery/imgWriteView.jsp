<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>
<body>
<c:import url="../default/header.jsp"/>


		<div id="root">
			<header>
				<h1>사진등록</h1>
			</header>
			<hr />
			 
			
			
			
			<section id="container">
				<form name="writeForm" method="post" action="imgWrite" enctype="multipart/form-data">
					<table>
						<tbody>
								<tr>
									<td>
										<label for="title">제목</label><input type="text" id="title" name="title" class="chk" title="제목을 입력하세요."/>
									</td>
								</tr>	
								<tr>
									<td>
										<label for="content">내용</label><textarea id="content" name="content" class="chk" title="내용을 입력하세요."></textarea>
									</td>
								</tr>
								<tr>
									<td>
										<label for="writer">작성자</label><input type="text" id="writer" name="name" class="chk" title="작성자를 입력하세요."/>
									</td>
								<tr>
								<tr>
									<td>
										<input type="file" name="file">
									</td>
								<tr>
									<td>						
										<button class="write_btn" type="submit">작성</button>	
									</td>
								</tr>	
							</>
							
							
						</tbody>			
					</table>
				</form>
				
			</section>
			<hr />
		</div>




</body>
</html>