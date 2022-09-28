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

		<div>
			<h1>공지사항 등록</h1>
			<br> <br> <br>
		</div>
		<form id="frm" action="boardInsert.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th>제목</th>
						<td colspan="3"><input type="text" size="87" id="boardTitle"
							name="boardTitle" required="required">공지사항<input
							type="checkbox" name="checkType" onclick="isChecked(this)"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><textArea rows="10" cols="88"
								id="boardContent" name="boardContent"></textArea></td>
					</tr>
				</table>
			</div>
			<br>
			<div>
				<input type="hidden" id="boardWriter" name="boardWriter"
					value="${memberName }"> <input type="hidden" id="boardType"
					name="boardType"> <input type="submit" value="등록">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;&nbsp; <input
					type="button" value="목록"
					onclick="location.href='boardSelectList.do'">&nbsp;&nbsp;&nbsp;
			</div>
		</form>
	</div>

	<script type="text/javascript">
		function isChecked(box) {
			if (box.checked) {
				document.getElementById("boardType").value = "NOTICE";
			} else {
				document.getElementById("boardType").value = "";
			}
		}
	</script>
</body>
</html>