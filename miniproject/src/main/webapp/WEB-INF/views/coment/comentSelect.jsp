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
		
		</div>
		<div>
			<h1>댓 글</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="100">작성자</th>
					<td width="100" align="center">${vo.comentWriter }</td>
					<th width="100">작성일자</th>
					<td width="100" align="center">${vo.comentDate }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5">
						<textarea rows="10" cols="80">${vo.comentContent }</textarea>
					</td>
				</tr>
				

			</table>
		</div>
		<br>
		<div>
			<c:if test="${vo.comentWriter eq name }">
				<button type="button" onclick="subCall('E')">수정</button>&nbsp;&nbsp;
		<button type="button" onclick="subCall('D')">삭제</button>
		</c:if>
			<button type="button" onclick="location.href='boardSelect.do'">목록</button>
		</div>
		<div>
			<form id="frm" method="post">
				<input type="hidden" id="id" name="id" value="${vo.comentConum }">
			</form>
		</div>
	</div>
</body>
</html>