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
         <h1>댓글 수정</h1>
      </div>
      <div>
         <form id="frm" action="comentEdit.do" method="POST">
            <div>
               <table border=1>
                  <tr>
                     <th width=100>작성자</th>
                     <td width=100>${vo.comentWriter }</td>
                  </tr>
                  <tr>
                     <th>내용</th>
                     <td colspan=5><textarea rows="10" cols="80"
                           id="comentContent" name="comentContent">${vo.comentContent }</textarea></td>
                  </tr>
                 
               </table>
            </div><br>
            <div>
               <input type="submit"value="수정">
                <input type="button" onclick="location.href='comentSelectList.do'" value="취소">
            </div>
         </form>
      </div>
   </div>
</body>
</html>