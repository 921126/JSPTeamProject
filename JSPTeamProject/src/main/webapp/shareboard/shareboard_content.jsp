<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 조회 테스트</title>
</head>
<body>
	<table>
		<tr>
			<td width="20%">글 번호</td>
			<td width="20%">숫자</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><b>작성자데이터</b></td>
			<td>작성일</td>
			<td><b>날짜데이터</b></td>
		</tr>
		<tr>
			<td width="20%">글제목</td>
			<td colspan="3"><b>제목데이터</b></td>
		</tr>
		<tr>
			<td width="20%">글내용</td>
			<td colspan="3" height="120px"><b>내용데이터</b></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록" onclick="location.href='shareboard_list.sb'">&nbsp;&nbsp;
				<input type="button" value="수정" onclick="location.href='shareboard_modify.sb'">&nbsp;&nbsp;
				<input type="button" value="삭제" onclick="location.href='shareboard_delete.sb'">&nbsp;&nbsp;				
			</td>
		</tr>
	</table>
</body>
</html>