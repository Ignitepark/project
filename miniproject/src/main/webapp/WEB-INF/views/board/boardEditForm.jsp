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
         <h1>게시글 수정</h1>
      </div>
      <div>
         <form id="frm" action="boardEdit.do" method="POST">
            <div>
               <table border=1>
                  <tr>
                     <th width=100>작성자</th>
                     <td width=100>${vo.boardWriter }</td>
                     <th width=100>작성일자</th>
                     <td width=100><input type="date" id="boardDate"
                        name="boardDate" value=${vo.boardDate }></td>
                     <th width=100>조회수</th>
                     <td width=100>${vo.boardHit }</td>
                  </tr>
                  <tr>
                     <th>제목</th>
                     <td colspan=5><input type="text" id="boardTitle"
                        name="boardTitle" value=${vo.boardTitle }></td>
                  </tr>
                  <tr>
                     <th>내용</th>
                     <td colspan=5><textarea rows="10" cols="80"
                           id="boardContent" name="boardContent">${vo.boardContent }</textarea></td>
                  </tr>
                  <tr>
                     <th>첨부파일</th>
                     <td colspan=5><input type="file" id="file" name="file"
                        value=${vo.boardAttech }>
                        </td>
                  </tr>
               </table>
            </div><br>
            <div>
               <input type="hidden" id="boardNum" name="boardNum" value="${vo.boardNum }">
               <input type="submit"value="수정">
               <input type="button" onclick="location.href='boardSelectList.do'" value="목록">
            </div>
         </form>
      </div>
   </div>
</body>
</html>