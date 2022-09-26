<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input {
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

input:hover {
	background: #47a7f5 radial-gradient(circle, transparent 1%, #47a7f5 1%)
		center/15000%;
	color: white;
}

input:active {
	background-color: #292d3e;
	background-size: 100%;
	transition: background 0s;
}

</style>
</head>
<body>
	<div align="center">
		<br>
		<br>
		<br>
		<br>
		<form id="frm" action="comentInsert.do" method="post">
			<div class="comtitle"><h3>댓글</h3></div>
			<div class="cominput">
			<textarea class="combox" rows="5" cols="80" name="comnet_Content" placeholder="댓글 입력.."></textarea>
			</div>

			<br>
			<div>
				<input type="submit" value="등록">&nbsp;&nbsp;&nbsp; 
				<input type="reset" value="수정" onclick="location.href='comentWriteForm.do'">&nbsp;&nbsp;&nbsp;
				<input type="button" value="돌아가기"
					onclick="location.href='comentSelectList.do'">&nbsp;&nbsp;&nbsp;
			</div>
		</form>
	</div>
	<br>
</body>
</html>