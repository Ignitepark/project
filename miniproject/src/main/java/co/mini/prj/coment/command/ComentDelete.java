package co.mini.prj.coment.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.coment.service.ComentService;
import co.mini.prj.coment.service.ComentVO;
import co.mini.prj.coment.serviceimpl.ComentServiceImpl;
import co.mini.prj.common.Command;

public class ComentDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ComentService dao = new ComentServiceImpl();
		ComentVO vo = new ComentVO();
		vo.setComentConum(Integer.valueOf(request.getParameter("num")));

		String viewPage = "coment/comentError";
		int a = dao.ComentDelete(vo);

		if (a != 0) {
			viewPage = "comentSelectList.do";
		} else {
			request.setAttribute("message", "삭제 실패 !!");
		}

		return viewPage;
	}

}
