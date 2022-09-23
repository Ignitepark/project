<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">

		<div>
			<h1>댓글 목록</h1>
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th width="70">글번호</th>
						<th width="150">작성자</th>
						<th width="150">작성일자</th>
						<th width="70">조회수</th>
					</tr>
				<thead>
				<tbody>
					<c:if test="${empty list}">
						<tr>
							<td colspan="6">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty list}">
						<c:forEach items="${list}" var="coment">
							<tr onMouseover="this.style.backgroundColor = 'yellow'"
								onMouseover="this.style.backgroundColor = 'white'"
								onclick="selectBoard('${coment.comentConum}')">
								<td>${coment.comentNum}</td>
								<td>${coment.comentWriter}</td>
								<td>${coment.comentDate}</td>
								<td>${coment.comentHit}</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
		<br>
		<div>
			<form id="frm" action="comentSelect.do" method="post">
				<input type="hidden" id="id" name="num">
				<c:if test="${not empty num }">
					<button type="button" onclick="location.href='comentWriteForm.do'">글쓰기</button>
				</c:if>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function selectboard(num) {
			document.getElementById("num").value = num;
			frm.submit();
		}
	</script>
</body>
</html>