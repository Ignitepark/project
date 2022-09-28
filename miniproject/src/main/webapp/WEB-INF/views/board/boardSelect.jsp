<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 48
}

input {
	width: 90%;
	line-height: 20px;
	height: 20px;
	border: 0px;
	height: 26px;
	margin: 0px;
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

td {
	text-align: center;
}

.pageNum {
	color: #042a33;
	background-color: #ffffff;
	border: 1px solid #000000;
	border-radius: 4px;
	padding: 15px 18px 30px 15px cursor: pointer;
	width: 20px;
	height: 32px;
	font-size: 14px;
	box-shadow: 0 0 4px #999;
	background-position: center;
	transition: background 0.8s;
	height: 32px;
}

.pageNum:hover {
	background: #d5e7f7 radial-gradient(circle, transparent 1%, #d5e7f7 1%)
		center/15000%;
	color: white;
}

.pageNum:active {
	background-color: #292d3e;
	background-size: 100%;
	transition: background 0s;
}

.writeBtn {
	color: #042a33;
	background-color: #ffffff;
	border: 1px solid #000000;
	border-radius: 4px;
	padding: 15px 18px 30px 15px cursor: pointer;
	width: 50px;
	height: 22px;
	font-size: 14px;
	box-shadow: 0 0 4px #999;
	background-position: center;
	transition: background 0.8s;
	height: 32px;
}

.writeBtn:hover {
	background: #d5e7f7 radial-gradient(circle, transparent 1%, #d5e7f7 1%)
		center/15000%;
	color: white;
}

.writeBtn:active {
	background-color: #292d3e;
	background-size: 100%;
	transition: background 0s;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.notice {
	padding: 80px 0;
}

.page-title {
	margin-bottom: 60px;
}

.page-title h3 {
	font-size: 28px;
	color: #333333;
	font-weight: 400;
	text-align: center;
}

#board-search .search-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#board-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 100%;
	max-width: 1000px;
}

#board-search .search-window .search-wrap input {
	height: 40px;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #ccc;
	margin: 0 auto;
}

#board-search .search-window .search-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#board-search .search-window .search-wrap .btn {
	right: 0;
	top: 0;
	bottom: 0;
	width: 50px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	font-size: 13px;
	width: 100%;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.board-table a {
	color: #333;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;
}

.board-table .th-num {
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {
	padding: 8px 0;
}

.board-table tbody td {
	border-top: 1px solid #e7e7e7;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #e7e7e7;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.btn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

/* reset */
* {
	list-style: none;
	text-decoration: none;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.container {
	width: 1100px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

.boxmenu {
	display: inline;
}

table {
	table-layout: fixed;
}

#content {
	padding: 5px 10px 5px 10px;
	border: 0px;
}

#title {
	text-align: center;
}

td th {
	padding: 0px;
}

img {
	width: 24px;
	height: 24px;
}

.th-title {
	padding-left: 10px;
}

.doBtn {
	color: #042a33;
	background-color: #ffffff;
	border: 1px solid #000000;
	border-radius: 4px;
	padding: 15px 18px 30px 15px cursor: pointer;
	width: 50px;
	height: 22px;
	font-size: 14px;
	box-shadow: 0 0 4px #999;
	background-position: center;
	transition: background 0.8s;
	height: 32px;
}

.doBtn:hover {
	background: #d5e7f7 radial-gradient(circle, transparent 1%, #d5e7f7 1%)
		center/15000%;
	color: white;
}
</style>
</head>

<body>
	<div align="center">
		<section class="page-title bg-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<ul class="list-inline mb-0">
							<li class="list-inline-item"><a href="boardSelectList.do"
								class="text-sm letter-spacing text-white text-uppercase font-weight-bold">Board</a>
							</li>
							<li class="list-inline-item"><span class="text-white">|</span></li>
							<li class="list-inline-item"><a href="#"
								class="text-color text-uppercase text-sm letter-spacing">POST</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<div class="container">
			<div class="search-window">
				<div class="search-wrap"></div>
			</div>
		</div>
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<tr>
						<th scope="col" class="th-num titleLine" colspan="2">제목</th>
						<td scope="col" class="th-num titleLine" colspan="4"><input
							type="text" id="title" readonly="readonly"
							value="${vo.boardTitle }"></td>
						<th scope="col" class="th-num titleLine" colspan="2">등록일</th>
						<td scope="col" class="th-num titleLine" colspan="4">${vo.boardDate}</td>
					</tr>
					<tr>
						<th scope="col" class="th-num">작성자</th>
						<td scope="col" class="th-num" colspan="5">${vo.boardWriter}</td>
						<th scope="col" class="th-num">조회수</th>
						<td scope="col" class="th-num">${vo.boardHit}</td>
						<th scope="col" class="th-num" colspan="2"><c:if
								test="${isGood eq 0 }">
								<a href="boardGoodInsert.do"><img alt="♡"
									src="images/heart/fheart.png"></a>
							</c:if> <c:if test="${isGood eq 1 }">
								<a href="boardGoodDelete.do"><img alt="♥"
									src="images/heart/bheart.png"></a>
							</c:if></th>
						<td scope="col" class="th-num" colspan="2">${goodNum}</td>
					</tr>
				</table>
			</div>
			<div id="board-list">
				<div class="container">
					<table class="board-table">
						<thead>
							<tr>
								<th scope="col" class="th-num" colspan="3">내용</th>
							</tr>
							<tr>
								<td scope="col" class="th-num" colspan="12"><textarea
										id="content" rows="10" cols="140" readonly="readonly">${vo.boardContent }</textarea></td>
							</tr>
						</thead>
					</table>
				</div>
			</div>
			<div id="board-list">
				<div class="container">
					<table class="board-table">
						<tr>
							<th scope="col" class="th-num" colspan="2">댓글목록</th>
							<td scope="col" class="th-num" colspan="10"></td>
						</tr>
					</table>
				</div>
			</div>
			<div id="board-list">
				<div class="container">
					<table class="board-table">
						<c:if test="${not empty coments }">
							<c:forEach items="${coments}" var="com">
								<tr id="startcoment">
									<th scope="col" class="th-num" colspan="1">${com.comentNum }</th>
									<td scope="col" class="th-num" colspan="8"><input
										type="text" readonly="readonly" value="${com.comentContent }"></td>
									<td scope="col" class="th-num" colspan="3">${com.comentWriter }<a
										href="#startcoment"> &nbsp; &nbsp; <i
											class="ti-marker-alt" onclick="letsEdit(this)"></i></a> <a
										href="#"> &nbsp; &nbsp; &nbsp;<i class="ti-eraser"
											onclick="letsDelete(this)"></i>
									</a></td>
								</tr>
								<c:if test="${not empty cocoments }">
									<c:forEach items="${cocoments }" var="cocom">
										<c:if test="${cocom.comentConum eq com.comentNum }">
											<tr>
												<th scope="col" class="th-num" colspan="1"><span
													class="material-symbols-outlined">
														subdirectory_arrow_right </span></th>
												<th scope="col" class="th-num" colspan="1">${cocom.comentNum }</th>
												<td scope="col" class="th-num" colspan="7"><input
													type="text" readonly="readonly"
													value="${cocom.comentContent }"><input
													type="hidden" value="${cocom.comentNum }"><input
													type="hidden" value="${com.comentNum }"><input
													type="hidden" value="${cocom.comentWriter }"></td>
												<td scope="col" class="th-num" colspan="3">${cocom.comentWriter }<a
													href="#startcoment"> &nbsp; &nbsp; <i
														class="ti-marker-alt" onclick="letscoEdit(this)"></i></a><a
													href="#"> &nbsp; &nbsp; &nbsp;<i class="ti-eraser"
														onclick="letscoDelete(this)"></i></a></td>
											</tr>
										</c:if>
									</c:forEach>
								</c:if>
								<tr>
									<th scope="col" class="th-title" colspan="1"
										style="padding-left: 10px; text-align: right;">댓글입력</th>
									<td scope="col" class="th-num" colspan="11"
										style="text-align: left;"><input type="text"
										id="cocoment" name="cocoment" required="required"><input
										type="hidden" value="${com.comentNum }">
										<button type="button" onclick="cocomentInsert(this)">
											<i class="ti-comment"></i>
										</button></td>
								</tr>
							</c:forEach>
						</c:if>
						<tr>
							<th scope="col" class="th-title" colspan="1"
								style="padding-left: 10px; text-align: right;">댓글입력</th>
							<td scope="col" class="th-num" colspan="11"
								style="text-align: left;"><input type="text" id="coment"
								name="coment">
								<button type="button" id="coment" name="coment"
									onclick="comentInsert(${vo.boardNum})">
									<i class="ti-comment"></i>
								</button></td>
						</tr>
					</table>
				</div>
			</div>
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
			<form id="boardDeleteFrm" action="boardDelete.do">
				<input type="hidden" id="boardNum" name="boardNum">
			</form>
		</div>

		<div>
			<button type="button" id="update" onclick="editcontent()"
				class="doBtn">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="boardDelete()" class="doBtn">삭제</button>
			&nbsp;&nbsp;
			<button type="button" onclick="location.href='boardSelectList.do'"
				class="doBtn">목록</button>
		</div>
		<br>
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

		function boardDelete() {
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
			let writer = data.parentElement.parentElement.parentElement.lastChild.previousSibling.innerText;
		
			document.getElementById("coeditconum").value = data.parentElement.parentElement.parentElement.firstChild
				.nextSibling.innerText;
			document.getElementById("cocontent").value = data.parentElement.parentElement.firstChild.value;
			document.getElementById("coeditbonum").value = document.getElementById("id").value;
			document.getElementById("coeditwriter").value = writer.trim();
			document.getElementById("comentConum").value = 0;

			console.log(document.getElementById("coeditconum").value)
			console.log(document.getElementById("cocontent").value)
			console.log(document.getElementById("coeditbonum").value)
			console.log(document.getElementById("coeditwriter").value)
			console.log(document.getElementById("comentConum").value)

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