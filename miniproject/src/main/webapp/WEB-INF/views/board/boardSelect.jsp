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
	overflow: visible;
	text-overflow: inherit;
	white-space: pre-line;
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
					<td colspan="5"><input type="text" id="title"
						readonly="readonly" value="${vo.boardTitle }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5"><textarea id="content" rows="10" cols="80"
							readonly="readonly">${vo.boardContent }</textarea></td>
				</tr>
				<tr>
					<th><c:if test="${isGood eq 0 }">
							<a href="boardGoodInsert.do"> <i class="ti-apple default"></i></a>
						</c:if> <c:if test="${isGood eq 1 }">
							<a href="boardGoodDelete.do"> <i class="ti-apple good"></i></a>
						</c:if></th>
					<td>좋아요 수 : ${goodNum }</td>
				</tr>

				<c:if test="${not empty coments }">
					<c:forEach items="${coments}" var="com">
						<tr id="startcoment">
							<th>${com.comentNum }</th>
							<td colspan="4"><input type="text" readonly="readonly"
								value="${com.comentContent }"></td>
							<td>${com.comentWriter }<a href="#startcoment"> <i
									class="ti-marker-alt" onclick="letsEdit(this)"></i></a> <a href="#"><i
									class="ti-eraser" onclick="letsDelete(this)"></i></a></td>
						</tr>
						<c:if test="${not empty cocoments }">
							<c:forEach items="${cocoments }" var="cocom">
								<c:if test="${cocom.comentConum eq com.comentNum }">
									<tr>
										<th></th>
										<th>${cocom.comentNum }</th>
										<td colspan="3"><input type="text" readonly="readonly"
											value="${cocom.comentContent }"><input type="hidden"
											value="${cocom.comentNum }"><input type="hidden"
											value="${com.comentNum }"><input type="hidden"
											value="${cocom.comentWriter }"></td>
										<td>${cocom.comentWriter }<a href="#startcoment"><i
												class="ti-marker-alt" onclick="letscoEdit(this)"></i></a><a
											href="#"><i class="ti-eraser"
												onclick="letscoDelete(this)"></i></a></td>
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
		<form id="boardUpdate" action="boardEdit.do" method="post">
			<input type="hidden" name="boardNum" value="${vo.boardNum }">
			<input type="hidden" id="boardTitle" name="boardTitle"> <input
				type="hidden" id="boardContent" name="boardContent">

		</form>
		<div>
			<form id="comentdelete" action="comentDelete.do">
				<input type="hidden" id="deletenum" name="comentNum"> <input
					type="hidden" id="deletebonum" name="boardNum"> <input
					type="hidden" id="deleteConum" name="comentConum">
			</form>
		</div>

		<div>
			<form id="coedit" action="comentEdit.do" method="post">
				<input type="hidden" id="coeditconum" name="comentNum"> <input
					type="hidden" id="cocontent" name="comentContent"> <input
					type="hidden" id="coeditbonum" name="boardNum"> <input
					type="hidden" id="coeditwriter" name="comentWriter"> <input
					type="hidden" id="comentConum" name="comentConum">
			</form>
		</div>
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
		<form id="boardDeleteFrm" action="boardDelete.do"><input type="hidden" id="boardNum" name="boardNum"></form>
		</div>

		<div>
			<button type="button" id="update" onclick="editcontent()">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="boardDelete()">삭제</button>
			&nbsp;&nbsp;
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
		
		function boardDelete(){
			document.getElementById("boardNum").value = document.getElementById("id").value;
			boardDeleteFrm.submit();
		}

		function cocomentInsert(e) {
			document.getElementById("cocomentContent").value = e.parentElement.firstChild.value;
			document.getElementById("cobonum").value = document.getElementById("id").value;
			document.getElementById("conum").value = e.parentElement.firstChild.nextSibling.value;
			cocofrm.submit();
		}

		function comentInsert(num) {
			document.getElementById("comentContent").value = document.getElementById("coment").value;
			document.getElementById("bonum").value = num;
			document.getElementById("boconum").value = 0;

			cofrm.submit();
		}


		function doEdit(data) {

			document.getElementById("coeditconum").value = data.parentElement.parentElement.parentElement.firstChild
				.nextSibling.innerText;
			document.getElementById("cocontent").value = data.parentElement.parentElement.firstChild.value;
			document.getElementById("coeditbonum").value = document.getElementById("id").value;
			document.getElementById("coeditwriter").value = data.parentElement.parentElement.parentElement.lastChild
				.previousSibling.innerText;
			document.getElementById("comentConum").value = 0;
			coedit.submit();

		}

		function letsEdit(data) {
			let content = data.parentElement.parentElement.previousSibling.previousSibling.firstChild.value;
			if (data.parentElement.parentElement.previousSibling.previousSibling.firstChild.readOnly) {
				data.parentElement.parentElement.previousSibling.previousSibling.firstChild.readOnly = false;
				let a = document.createElement('a');
				let check = document.createElement('i');
				check.onclick = function () {
					doEdit(this)
				};
				check.className = "ti-check";
				a.href = "#";
				a.append(check);
				data.parentElement.parentElement.previousSibling.previousSibling.append(a);
			}
		}

		function letscoEdit(data) {
			let content = data.parentElement.parentElement.previousSibling.previousSibling.firstChild.value;
			if (data.parentElement.parentElement.previousSibling.previousSibling.firstChild.readOnly) {
				data.parentElement.parentElement.previousSibling.previousSibling.firstChild.readOnly = false;
				let a = document.createElement('a');
				let check = document.createElement('i');
				check.onclick = function () {
					docoEdit(this)
				};
				check.className = "ti-check";
				a.href = "#";
				a.append(check);
				data.parentElement.parentElement.previousSibling.previousSibling.append(a);
			}
		}

		function docoEdit(data) {

			document.getElementById("coeditconum").value = data.parentElement.previousSibling.previousSibling.previousSibling
				.value;
			document.getElementById("cocontent").value = data.parentElement.parentElement.firstChild.value;
			document.getElementById("coeditbonum").value = document.getElementById("id").value;
			document.getElementById("coeditwriter").value = data.parentElement.previousSibling.value;
			document.getElementById("comentConum").value = data.parentElement.previousSibling.previousSibling.value

			coedit.submit();

		}

		function editcontent() {
			document.getElementById("content").readOnly = false;
			document.getElementById("title").readOnly = false;
			let updateBtn = document.getElementById("update")
			updateBtn.innerText = "등록";
			updateBtn.onclick = function () {
				let content = document.getElementById("content").value;
				let title = document.getElementById("title").value;
				document.getElementById("boardContent").value = content;
				document.getElementById("boardTitle").value = title;

				boardUpdate.submit();
			}
		}

		function letscoDelete(data) {

			document.getElementById("deletebonum").value = document.getElementById("id").value;
			document.getElementById("deletenum").value = data.parentElement.parentElement.parentElement.firstChild
			.nextSibling.nextSibling.nextSibling.innerText;
			document.getElementById("deleteConum").value = data.parentElement.parentElement.previousSibling.previousSibling
				.lastChild.previousSibling.value;
			comentdelete.submit();
		}

		function letsDelete(data) {
			document.getElementById("deletebonum").value = document.getElementById("id").value;
			document.getElementById("deletenum").value = data.parentElement.parentElement.parentElement.firstChild.nextSibling
				.innerText;
			document.getElementById("deleteConum").value = 0;
			comentdelete.submit();
		}
	</script>


</body>

</html>