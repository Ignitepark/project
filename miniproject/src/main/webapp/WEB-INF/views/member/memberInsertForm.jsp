<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>회원 가입</h1>
			<form id="frm" action="memberInsert.do" method="post"
				onsubmit="return formCheck()">
				<div>
					<table border="1">
						<tr>
							<th width="150">아이디</th>
							<td width="280"><input type="text" id="memberId"
								name="memberId" required="required">&nbsp;
								<button type="button" id="btn" value="No" onclick="idChek()">중복체크</button>
							</td>
						</tr>
						<tr>
							<th>패스워드</th>
							<td><input type="password" id="memberPw" name="memberPw"
								required="required"></td>
						</tr>
						<tr>
							<th>패스워드확인</th>
							<td><input type="password" id="pwc" required="required">
							</td>
						</tr>
						<tr>
							<th>이 름</th>
							<td><input type="text" id="memberName" name="memberName"
								required="required"></td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td><input type="text" id="memberNickName"
								name="memberNickName"></td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td><input type="date" id="memberAge" name="memberAge">
							</td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td><input type="text" id="memberTel" name="memberTel">
							</td>
						</tr>
						<tr>
							<th>회원종류</th>
							<td><input type="checkbox" id="memberAuthor"
								name="memberAuthor" onclick="checkOnlyOne(this)"
								value="CUSTOMER">일반회원&nbsp;&nbsp;<input type="checkbox"
								id="memberAuthor" name="memberAuthor"
								onclick="checkOnlyOne(this)" value="TRAINER">트레이너</td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<input type="submit" value="등록">&nbsp;&nbsp; <input
						type="reset" value="취소">&nbsp;&nbsp; <input type="button"
						value="목록" onclick="location.href='main.do'">
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function formCheck() {
		let pass1 = document.getElementById("memberPw").value;
		let pass2 = document.getElementById("pwc").value;
		let idChecked = document.getElementById("btn").value;
		
		if(idChecked == 'No') {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		
		if(pass1 != pass2) {
			alert("패스워드가 일치하지 않습니다.");
			document.getElementById("memberPw").value = "";
			document.getElementById("pwc").value = "";
			document.getElementById("memberPw").focus();
			return false;
		}	
		return true;
	}
	
	function idChek(){  //Ajax를 이용해서 id 중복체크를 한다.
		let id = document.getElementById("memberId").value;
		fetch('ajaxMemberIdCheck.do?id='+id)
			.then(response => response.text())
			.then(data=> respnseResult(data)); //이곳에 Call Back함수를 작성하면 됨
	}
	
	function respnseResult(data){  //fetch처리 CallBack함수
		if(data == '1') {
        	alert("사용할 수 있는 아이디 입니다.");
    		document.getElementById("btn").value = "Yes";
    		document.getElementById("memberPw").focus();
        }else{
        	alert("사용할 수 없는 아이디 입니다.");
        	document.getElementById("memberId").value = "";
        	document.getElementById("memberId").focus();
        }
	}
	function checkOnlyOne(element) {
		  
		  const checkboxes 
		      = document.getElementsByName("memberAuthor");
		  
		  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
		}
</script>
</body>
</html>