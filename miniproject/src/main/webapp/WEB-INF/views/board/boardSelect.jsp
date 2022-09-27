<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input {
	width: 90%;
	height: 26px;
	border: 0px;
}

.ti-apple {
	color: red;
}

.default {
	background-color: blue;
}

.good {
	background-color: black;
}

button {
	border: 0px;
	background-color: white;
}

th {
	text-align: center;
}
</style>
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
					<th><c:if test="${isGood eq 0 }">
							<a href="boardGoodInsert.do"> <i class="ti-apple default"></i></a>
						</c:if> <c:if test="${isGood eq 1 }">
							<a href="boardGoodDelete.do"> <i class="ti-apple good"></i></a>
						</c:if></th>
					<td>좋아요 수 : ${goodNum }</td>
					<th>첨부파일</th>
					<td colspan="3">${vo.boardAttach }</td>
				</tr>

				<c:if test="${not empty coments }">
					<c:forEach items="${coments}" var="com">
						<tr>
							<th>${com.comentNum }</th>
							<td colspan="4">${com.comentContent }</td>
							<td>${com.comentWriter }</td>
						</tr>
						<c:if test="${not empty cocoments }">
							<c:forEach items="${cocoments }" var="cocom">
								<c:if test="${cocom.comentConum eq com.comentNum }">
									<tr>
										<th></th>
										<th>${cocom.comentNum }</th>
										<td colspan="3">${cocom.comentContent }</td>
										<td>${cocom.comentWriter }</td>
									</tr>
								</c:if>
							</c:forEach>
						</c:if>
						<tr>
							<th></th>
							<th>댓글입력</th>
							<td colspan="5F"><input type="text" id="cocoment"
								name="cocoment" required="required"><input type="hidden"
								value="${com.comentNum }">
								<button type="button" onclick="cocomentInsert(this)">
									<i class="ti-comment"></i>
								</button></td>
						</tr>
					</c:forEach>
				</c:if>
				<tr>
					<th>댓글입력</th>
					<td colspan="5F"><input type="text" id="coment" name="coment">
						<button type="button" id="coment" name="coment"
							onclick="comentInsert(${vo.boardNum})">
							<i class="ti-comment"></i>
						</button></td>
				</tr>

			</table>

		</div>
		<br>
		<div>
			<form id="cocofrm" action="comentInsert.do" method="post">
				<input type="hidden" id="cocomentContent" name="comentContent">
				<input type="hidden" id="conum" name="conum"> <input
					type="hidden" id="cobonum" name="bonum">


			</form>
		</div>
		<div>
			<form id="cofrm" action="comentInsert.do" method="post">
				<input type="hidden" id="comentContent" name="comentContent"><input
					type="hidden" id="bonum" name="bonum"><input type="hidden"
					id="boconum" name="conum">

			</form>
		</div>

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
		function cocomentInsert(e){
			document.getElementById("cocomentContent").value = e.parentElement.firstChild.value;
			document.getElementById("cobonum").value = document.getElementById("id").value;
			document.getElementById("conum").value = e.parentElement.firstChild.nextSibling.value;
			cocofrm.submit();
		}
		function comentInsert(num){
			document.getElementById("comentContent").value = document.getElementById("coment").value;
			document.getElementById("bonum").value = num;
			document.getElementById("boconum").value = 0;
			cofrm.submit();
		}
	</script>


</body>
</html>