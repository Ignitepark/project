package co.mini.prj.member.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.MemberVO;
import co.mini.prj.member.service.Impl.MemberServiceImpl;

public class MemberInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		String viewPage = "main/message";
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberNickName(request.getParameter("memberNickName"));
		vo.setMemberAge(Date.valueOf(request.getParameter("memberAge")));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAuthor(request.getParameter("memberAuthor"));
		int n = dao.memberInsert(vo);
		if (n != 0) {
			request.setAttribute("message", "회원 가입에 성공하였습니다!");
		} else {
			request.setAttribute("message", "회원 가입에 실패하였습니다...");
		}
		return viewPage;
	}

}
