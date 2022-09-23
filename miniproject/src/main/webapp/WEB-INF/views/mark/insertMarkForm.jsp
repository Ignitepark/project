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
			<h1>평가 등록</h1>
		</div>
		<div>
			<form id="frm" action="insertMark.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">작성자</th>
							<td width="150"><input type="text" id="memberId"
								name="memberId" value="${memberId }" readonly="readonly"></td>
						</tr>
						<tr>
							<th width="100">작성일자</th>
							<td width="150"><div id = "current_date"></div></td>
						</tr>

						<tr>
							<th>트레이너</th>
							<td colspan="3"><input type="text" size="84" id="trainerId"
								name="trainerId" required="required"></td>
						</tr>

						<tr>
							<th>평가</th>
							<c:if test="${trainerMark <= 0}">
								<td colspan="2">잘못입력된 값입니다</td>
							</c:if>
							<td colspan="3"><input type="number" id="trainerMark"
								name="trainerMark" required="required"></td>

						</tr>
					</table>
				</div>
				<br>
				<div>
					<input type="submit" value="등록">&nbsp;&nbsp;&nbsp; <input
						type="reset" value="취소">&nbsp;&nbsp;&nbsp;
					<!-- 게시판으로 나가기 -->
					<input type="button" value="목록"
						onclick="location.href='markSelectList.do'">
				</div>

			</form>
		</div>
	</div>
	<script>
		date = new Date();
		year = date.getFullYear();
		month = date.getMonth() + 1;
		day = date.getDate();
		document.getElementById("current_date").innerHTML = year + "/" + month
				+ "/" + day;
	</script>
</body>
</html>