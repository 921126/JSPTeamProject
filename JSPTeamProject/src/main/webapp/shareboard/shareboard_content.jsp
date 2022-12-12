<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${contVo.writer } 님의 글</title>
</head>
<body>
	<table>
		<tr>
			<td width="20%">글 번호</td>
			<td width="30%">${contVo.sbno }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><b>${contVo.writer }</b></td>
			<td>작성일</td>
			<td><b>${contVo.regdate }</b></td>
		</tr>
		<tr>
			<td width="20%">글제목</td>
			<td colspan="3"><b>${contVo.title }</b></td>
		</tr>
		<tr>
			<td width="20%">글내용</td>
			<td colspan="3" height="120px"><b>${contVo.content }</b></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록" onclick="location.href='shareboard_list.sb'">&nbsp;&nbsp;
				<c:choose>
				<c:when test="${sessionScope.user_id == contVo.writer}">
					<input type="button" value="수정" onclick="location.href='shareboard_modify.sb?sbno=${contVo.sbno }&writer=${contVo.writer }'">&nbsp;&nbsp;
					<input type="button" value="삭제" onclick="if(!confirm('정말 삭제하시겠습니까?')) {return false} else {location.href='shareboard_delete.sb?sbno=${contVo.sbno }&writer=${contVo.writer }'}">&nbsp;&nbsp;
				</c:when>
				<c:when test="${sessionScope.user_teacher == null }">
					<input type="button" value="삭제" onclick="if(!confirm('정말 삭제하시겠습니까?')) {return false} else {location.href='shareboard_delete.sb?sbno=${contVo.sbno }&writer=${contVo.writer }'}">&nbsp;&nbsp;
				</c:when>
				</c:choose>
			</td>
		</tr>
	</table>
</body>
</html>