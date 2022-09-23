package co.mini.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.common.Command;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.MemberVO;
import co.mini.prj.member.service.MemberVOC;
import co.mini.prj.member.service.Impl.MemberServiceImpl;

public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		MemberVOC voc = new MemberVOC();
		String viewPage = "main/message";
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo = dao.memberSelect(vo);
		if (vo != null) {
			session.setAttribute("memberNo", vo.getMemberNo());
			session.setAttribute("memberId", vo.getMemberId());
			session.setAttribute("memberName", vo.getMemberName());
			session.setAttribute("memberNickName", vo.getMemberNickName());
			session.setAttribute("memberAge", vo.getMemberAge());
			session.setAttribute("memberTel", vo.getMemberTel());
			session.setAttribute("memberAuthor", vo.getMemberAuthor());
			voc = dao.memberSelectData(vo.getMemberNo());
			viewPage = "page/menu";
			if (voc != null) {
				session.setAttribute("memberAddress", voc.getMemberAddress());
				session.setAttribute("memberHeight", voc.getMemberHeight());
				session.setAttribute("memberWeight", voc.getMemberWeight());
				session.setAttribute("memberGender", voc.getMemberGender());
			}
		}
		return viewPage;
	}

}
