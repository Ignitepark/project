<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	text-align: center;
}

.pageNum {
	color: #042a33;
	background-color: #f1eac0;
	border: 1px solid #bfe9f3;
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
	background-color: #f1eac0;
	border: 1px solid #bfe9f3;
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
	width: 50%;
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
	width: 100px;
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {
	padding: 14px 0;
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

td {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

td:hover {
	overflow: visible;
}
</style>
</head>
<body></body>
<div align="center">

	<div>
		<h1>게시글 목록</h1>
	</div>
	<div>
		<br> <br> <br> <br>



		<div id="board-search" align="left">
			<div class="container">
				<div class="search-window">
					<div class="search-wrap">
						<div align="left" class="boxmenu" style="right: 100px">
							<form id="selectPageAmount" action="boardSelectList.do"
								style="display: inline; position: relative;">
								<input type="hidden" id="pageAmount" name="pageAmount">
								<input type="hidden" id="pageNum" name="pageNum" value="1">
								<b>게시글 수</b> <select id="pageAmountList" name="pageAmountList">
									<option value="#" selected>=========</option>
									<option value="5">5개씩 보기</option>
									<option value="20">20개씩 보기</option>
									<option value="50">50개씩 보기</option>
									<option value="100">100개씩 보기</option>
								</select>
							</form>
						</div>
						<div align="right" class="boxmenu">
							<form id="searchMenuFrm" action="boardSelectList.do"
								style="display: inline; position: relative; left: 145px">
								<select id="searchMenu" name="searchMenu">
									<option value="#" selected>=========</option>
									<option value="TITLE">제목</option>
									<option value="WRITER">작성자</option>
									<option value="CONTENT">내용</option>
								</select> <input type="text" id="search" name="search"
									placeholder="검색어를 입력해주세요."></input> <input type="submit"
									id="searchBtn" name="searchBtn" value="검색" class="btn btn-dark">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-num">작성자</th>
							<th scope="col" class="th-num">첨부파일</th>
							<th scope="col" class="th-date">등록일</th>
							<th scope="col" class="th-num">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty list}">
							<tr>
								<td colspan="6">게시글이 존재하지 않습니다.</td>
							</tr>
						</c:if>
						<c:if test="${not empty list}">
							<c:forEach items="${list}" var="board">
								<tr>
									<td>${board.boardNum}</td>
									<td><a href="#!"
										onclick="selectBoard('${board.boardNum}')">${board.boardTitle}</a></td>
									<td>${board.boardWriter}</td>
									<td>${board.boardAttach}</td>
									<td>${board.boardDate}</td>
									<td>${board.boardHit}</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		<br>
		<div>
			<form action="boardSelectList.do">
				<c:forEach items="${pageList }" var="linum">
					<input type="submit" id="pageNum" name="pageNum" class="pageNum"
						value=${linum } />
				</c:forEach>
			</form>
		</div>
	</div>
	<br>
	<div>
		<form id="frm" action="boardSelect.do" method="post">
			<input type="hidden" id="num" name="id">
			<button type="button" onclick="location.href='boardWriteForm.do'"
				class="writeBtn">글쓰기</button>
			<c:if test="${not empty num }">
				<button type="button" onclick="location.href='boardWriteForm.do'"
					class="writeBtn">글쓰기</button>
			</c:if>
		</form>


	</div>
</div>
<script type="text/javascript">
	function selectBoard(num) {
		console.log(num);
		document.getElementById("num").value = num;
		frm.submit();
	}
	let amount = document.getElementById("selectPageAmount");
	amount.addEventListener("change", changeAmount)
	function changeAmount() {
		document.getElementById("pageAmount").value = document
				.getElementById("pageAmountList").value
		document.getElementById("selectPageAmount").submit();
	}

	//
</script>
</body>


</html>