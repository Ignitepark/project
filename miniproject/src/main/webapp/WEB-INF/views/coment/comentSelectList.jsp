<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
button {
	color: #1D9AF2;
	background-color: #292D3E;
	border: 1px solid #1D9AF2;
	border-radius: 4px;
	padding: 15px 18px 30px 15px cursor: pointer;
	height: 32px;
	font-size: 14px;
	box-shadow: 0 0 4px #999;
	background-position: center;
	transition: background 0.8s;
}

button:hover {
	background: #47a7f5 radial-gradient(circle, transparent 1%, #47a7f5 1%)
		center/15000%;
	color: white;
}

button:active {
	background-color: #292d3e;
	background-size: 100%;
	transition: background 0s;
}
</style>
</head>
<body>
	<div align="center">
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>
		<div>
			<table>
				<thead>
					<tr>
						<th width="70">글번호</th>
						<th width="150">작성자</th>
						<th width="150">댓글내용</th>
					</tr>
				<thead>
				<tbody>
					<c:if test="${empty list}">
						<tr>
							<td colspan="6">댓글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty list}">
						<c:forEach items="${list}" var="coment">
							<tr onMouseover="this.style.backgroundColor = 'yellow'"
								onMouseover="this.style.backgroundColor = 'white'"
								onclick="selectBoard('${coment.comentConum}')">
								<td>${coment.comentNum}</td>
								<td>${coment.comentWriter}</td>
								<td>${coment.comentContent}</td>
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
				<button type="button" onclick="location.href='comentWriteForm.do'">글쓰기</button>
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
		var comnent_conum = "${coment.comnet_conum}";
		var replyPageNum = 1;

		Handlebars.registerHelper("escape", function(coment_text) {
			var text = Handlebars.Utils.escapeExpression(coment_text);
			text = text.replace(/(\r\n|\n|\r)/gm, "<br/>");
			text = text.replace(/( )/gm, "&nbsp;");
			return new Handlebars.SafeString(text);
		});

		function time(timeValue) {
			var dateObj = new Date(timeValue);
			var year = dateObj.getFullYear();
			var month = dateObj.getMonth() + 1;
			var date = dateObj.getDate();
			var hours = dateObj.getHours();
			var minutes = dateObj.getMinutes();

			month < 10 ? month = '0' + month : month;
			date < 10 ? date = '0' + date : date;
			hours < 10 ? hours = '0' + hours : hours;
			minutes < 10 ? minutes = '0' + minutes : minutes;
			return year + "-" + month + "-" + date;
		};
	</script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>