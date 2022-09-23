<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<form id="frm" method="post">
				<div>
					<h1>트레이너 상세정보!</h1>
				</div>
				<div>
					<table border="1">
						<tr>
							<th width="120">트레이너 이름</th>
							<td width="200"><input type="text" id="memberId" name="memberId" value="${m.memberId }" readonly="readonly"></td>

						</tr>
						<tr>
							<th>나이</th>
							<td><input type="password" id="memberPassword" name="memberPassword" value="${m.memberPassword }" ></td>
						</tr>
						<tr>
							<th>이력</th>
							<td>
								<input type="text" id="memberName" name="memberName" value="${m.memberName }">
							</td>
						</tr>
						<tr>
							<th>SNS</th>
							<td>
								<input type="tel" id="memberTel" name="memberTel" value="${m.memberTel }">
							</td>
						</tr>
						<tr>
							<th>경력</th>
							<td>
							<input type="text" id="memberAuthor" name="memberAuthor" value="${m.memberAuthor }">
							</td>
						</tr>
					</table>
				</div>
				<br>
				<div>

					<input type="hidden" id="memberId" name="memberId">
					<button type="button" onclick="actionForm('E')"></button>
					&nbsp;&nbsp;
					<button type="button" onclick="actionForm('D')"></button>
					&nbsp;&nbsp;
					<button type="button" onclick="actionForm('L')"></button>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function actionForm(str) {
			switch (str) {
			case 'E': //
				frm.action = "memberEdit.do";
				frm.submit();
				break;
			case 'D': //
				frm.action = "memberDelete.do";
				frm.submit();
				break;
			default: //
				location.href = "SelectList.do";
			}
		}
	</script>
</body>
</html>