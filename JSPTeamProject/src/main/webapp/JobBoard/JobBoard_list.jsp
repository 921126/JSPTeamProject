<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h3>취업 게시판</h3>

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
				<c:forEach var="i" items="${joblist }" varStatus="num">
				<tr>
					<td>${num.count }</td>
					<td>${i.jno }</td>
					<td>${i.id }</td>
					<td>
						<a href="JobBoard_content.jobboard?jno=${i.jno }">${i.title }</a>
					</td>
					<td><fmt:formatDate value="${i.regdate }" pattern="yyyy-MM-dd HH시 mm분 ss초"/></td>
					
				</tr>
				</c:forEach>
			</tbody>
			
			<tbody>
				<tr>
					<td colspan="6" align="right">
						<form action="" class="form-inline" >
						  <div class="form-group">
						    <input type="text" name="search" placeholder="제목검색" class="form-control" >
						  	<input type="submit" value="검색" class="btn btn-default">
							<input type="button" value="글 작성" class="btn btn-default" onclick="location.href='JobBoard_write.jobboard'">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>
	
</body>
</html>