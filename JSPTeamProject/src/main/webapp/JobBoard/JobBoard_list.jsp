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
		<h3>��� �Խ���</h3>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>����</th>
					<th>�� ��ȣ</th>
					<th>�ۼ���</th>
					<th>����</th>
					<th>��¥</th>
					
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
					<td><fmt:formatDate value="${i.regdate }" pattern="yyyy-MM-dd HH�� mm�� ss��"/></td>
					
				</tr>
				</c:forEach>
			</tbody>
			
			<tbody>
				<tr>
					<td colspan="6" align="right">
						<form action="" class="form-inline" >
						  <div class="form-group">
						    <input type="text" name="search" placeholder="����˻�" class="form-control" >
						  	<input type="submit" value="�˻�" class="btn btn-default">
							<input type="button" value="�� �ۼ�" class="btn btn-default" onclick="location.href='JobBoard_write.jobboard'">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>
	
</body>
</html>