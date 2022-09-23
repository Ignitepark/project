package co.mini.prj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.Impl.MemberServiceImpl;

public class AjaxMemberIdCheck implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		return (dao.isMemberId(request.getParameter("id"))) ? "ajax:0" : "ajax:1";
	}
}
