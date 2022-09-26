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
		<br> <br> <br> <br> <br> <br>
		<div>
			<h1>게시글 상세보기</h1>
		</div>
		<div>
			<table border="1">
				<tr>
					<th width="100">작성자</th>
					<td width="100" align="center">${vo.boardWriter }</td>
					<th width="100">작성일자</th>
					<td width="100" align="center">${vo.boardDate }</td>
					<th width="100">조회수</th>
					<td width="100" align="center">${vo.boardHit }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5">${vo.boardTitle }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5"><textarea rows="10" cols="80">${vo.boardContent }</textarea>
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td colspan="5">${vo.boardAttach }</td>
				</tr>
			</table>
		</div>
		<br>
		<div>
			<c:if test="${vo.boardWriter eq name }">
				<button type="button" onclick="subCall('E')">수정</button>&nbsp;&nbsp;
		<button type="button" onclick="subCall('D')">삭제</button>&nbsp;&nbsp;
		</c:if>
			<button type="button" onclick="location.href='boardSelectList.do'">목록</button>
		</div>
		<div>
			<form id="frm" method="post">
				<input type="hidden" id="id" name="id" value="${vo.boardNum }">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function subCall(str) {
			if (str == 'E') {
				frm.action = "boardEditForm.do"; //수정
			} else {
				frm.action = "boardDelete.do"; //삭제
			}

			frm.submit();
		}
	</script>


</body>
</html>