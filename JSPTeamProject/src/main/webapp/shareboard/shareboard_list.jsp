<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
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
				<th>No.</th>
				<th>글 번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="vo" items="${list }" varStatus="num">
				<tr>
					<td></td>
					<td>글 번호 데이터</td>
					<td>작성자 데이터</td>
					<td>제목 데이터-글 작성 페이지로 연결</td>
					<td>날짜 데이터</td>
				</tr>
			</c:forEach>
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