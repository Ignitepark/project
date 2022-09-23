<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<c:if test="${empty list}">
					<tr>
						<td colspan="6" align="center">게시글이 존재하지 않습니다</td>
					</tr>
				</c:if>
				<c:if test="${not empty list }">
					<c:forEach items="${list }" var="n">
						<tr>
							<td>${n.payNum }</td>
							<td>${n.payPlan }</td>
							<td>${n.price }</td>
							<td>${n.memberId }</td>
							<td>${n.productId }</td>
							<td>${n.payDate }</td>
						</tr>
					</c:forEach>
				</c:if>
	</div>
</body>
</html>