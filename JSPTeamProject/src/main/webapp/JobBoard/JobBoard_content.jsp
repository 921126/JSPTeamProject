<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div align="center" class="div_center">

	<h3>게시글 내용 보기</h3>
	<hr>
	<table border="1" width="500">
		<tr>
			<td width="20%">글번호</td>
			<td width="30%">${vo.jno }</td>
			
			
		</tr>
		<tr>
			<td>작성자</td>
			<td>${vo.id }</td>
			
			<td>작성일</td>
			<td ><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd HH시 mm분 ss초"/></td>
		</tr>
		
		<tr>
			<td width="20%">글제목</td>
			<td colspan="3">${vo.title }</td>
		</tr>
		<tr>
			<td width="20%">글내용</td>
			<td colspan="3" height="120px">${vo.content }</td>
		</tr>
		
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록" onclick="location.href='JobBoard_list.jobboard'">&nbsp;&nbsp;
				<c:if test="${sessionScope.user_id != null }">
				<input type="button" value="수정" onclick="location.href='JobBoard_modify.jobboard?jno=${vo.jno}&writer=${vo.id }' ">&nbsp;&nbsp;
				<input type="button" value="삭제" onclick="location.href='JobBoard_delete.jobboard?jno=${vo.jno}&writer=${vo.id }' ">&nbsp;&nbsp;
				</c:if>
			</td>
		</tr>
	</table>
	
	

</div>


</body>
</html>