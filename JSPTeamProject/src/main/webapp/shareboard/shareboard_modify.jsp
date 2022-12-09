<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정 테스트 페이지</title>
</head>
<body>
	<div align="center" class="div_center">
		<h3>글 수정 테스트</h3>
		<hr>
		<form action="updateForm.sb" method="post">
			<table border="1" width="500">
				<tr>
					<td>글 번호</td>
					<td><b>글번호데이터</b>
						<input type="hidden" name="sbno" value="번호데이터">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" value="작성자데이터" readonly></td>
				</tr>
				<tr>
					<td>글 제목</td>
					<td><input type="text" name="title" value="제목데이터"></td>
				</tr>
				<tr>
					<td>글 내용</td>
					<td>
						<textarea rows="10" style="width: 95%;" name="content">내용데이터
						</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정" onclick="">&nbsp;&nbsp;
						<input type="button" value="목록" onclick="location.href='shareboard_list.sb'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>