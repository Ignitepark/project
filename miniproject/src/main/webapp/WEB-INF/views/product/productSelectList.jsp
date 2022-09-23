<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div><h1>상품 목록</h1>
		<table border="1">
			<thead>
				<tr>
					<th width="70">글번호</th>
					<th width="250">가격</th>
					<th width="150">수량</th>
					<th width="150">제품이름</th>
					<th width="150">유형</th>
				</tr>
			</thead>
			<tbody>
 				<c:if test="${empty product}">
					<tr>
						<td colspan="5" align="center">게시글이 존재하지 않습니다.</td>
					</tr>
				</c:if>
				<c:if test="${not empty product }">
					<c:forEach items="${product }" var="p">  
						<tr>
							<td align="center">${p.productId }</td>
							<td align="center">${p.price }</td>
							<td align="center">${p.count }</td>
							<td align="center">${p.productName }</td>
							<td align="center">${p.productType }</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>