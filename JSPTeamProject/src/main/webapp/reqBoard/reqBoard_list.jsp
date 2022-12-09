<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>건의게시판</h3>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>순서</th>
					<th>글 번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>날짜</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="vo" items="${list}" varStatus="num">
				<tr>
					<td>${vo.rbno }</td>
					<td>${vo.id }</td>
					<td>
					<a href="reqBoard_content.reqBoard?rbno=${vo.rbno}">${vo.title }</a>
					</td>
					<td><fmt:formatDate value ="${vo.regdate }" pattern="yyyy-MM-dd HH시mm분 ss초"/></td>
				</tr>
				</c:forEach>
			</tbody>
			
			<tbody>
				<tr>
					<td colspan="6" align="right">
						<form action="" class="form-inline" >
						  <div class="form-group">
							<input type="button" value="글 작성" class="btn btn-default" onclick="location.href='reqBoard_write.reqBoard'">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>
</body>
</html>