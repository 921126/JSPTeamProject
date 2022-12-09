<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>


<!-- �켱 �ٵ� �۾��ϱ� -->
<body>
<!-- end header -->

	<div class="container">
		<h3>�� �Խ���</h3>
		
		<table class="table table-borderd">
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
				<c:forEach var="vo" items="${list}" varStatus="num">
				<tr>
					<td>${num.count }</td>
					<td>${vo.cbno }</td>
					<td>${vo.id }</td>
					<td>
						<a href="classboard_content.board?bno=${vo.cbno}">${vo.title }</a>
					</td>
					<td><fmt:formatDate value="${vo.regdate }" pattern = "yyyy-MM-dd HH��mm��ss��"/></td>
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
							<input type="button" value="�� �ۼ�" class="btn btn-default" onclick="location.href='classboard_write.classboard'">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
				
		</table>
	</div>

<!-- footer -->
<!-- /footer -->
</body>
</html>