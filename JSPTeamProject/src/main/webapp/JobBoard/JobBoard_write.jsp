<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center" class="div_center">
	<!-- 글 작성은 관리자만 가능, 학생은 읽기기능만 추가해서 읽기만 가능하게 생성해야함 -->
	<h3>취업게시판 글 작성 페이지</h3>
	<hr>
	
	<form action="registForm.jobboard" method="post">
		<table border="1" width="500">
			<tr>
				<td>작성자</td>
				<td>
					<input type="text" name="writer" value="" size="10">
				</td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="title" required>
				</td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="작성 완료" onclick="location.href='JobBoard_list.jobboard'">
					&nbsp;&nbsp;
					<input type="button" value="목록" onclick="location.href='JobBoard_list.jobboard'">         
				</td>
			</tr>
			
		</table>
	</form>
	
</div>
	

</body>
</html>