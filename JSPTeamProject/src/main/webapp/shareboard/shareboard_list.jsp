<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록 테스트 페이지</title>
</head>
<body>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>글 번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>ㅁㄴㅇㄹ</td>
				<td>ㅁㄴㅇㄹ</td>
				<td>ㅁㅇㄴㄹ</td>
				<td>ㅁㄴㅇㄹ</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td colspan="6" align="right">
					<form action="" class="form-inline">
						<div class="form-group">
							<input type="button" value="글 작성" class="btn btn-default" onclick="location.href='shareboard_write.sb'">
						</div>
					</form>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>