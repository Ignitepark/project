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
			<h1>댓글 등록</h1>
		</div>
		<form id="frm" action="comentInsert.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">작성자</th>
						<td><input type="text" id="comentWriter" name="comentWriter"
							value="${name }" required="required"></td>
						<th width="100">작성일자</th>
						<td><input type="date" id="comentDate" name="comentDate"
							required="required"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><textArea rows="10" cols="88"
								id="comentContent" name="comentContent"></textArea></td>
					</tr>
				</table>
			</div>
			<br>
			<div>
				<input type="submit" value="등록">&nbsp;&nbsp;&nbsp; <input
					type="reset" value="취소">&nbsp;&nbsp;&nbsp; <input
					type="button" value="돌아가기"
					onclick="location.href='comentSelectList.do'">&nbsp;&nbsp;&nbsp;
			</div>
		</form>
	</div>
</body>
</html>