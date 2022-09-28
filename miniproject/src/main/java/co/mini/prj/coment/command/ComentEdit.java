package co.mini.prj.coment.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.coment.service.ComentService;
import co.mini.prj.coment.service.ComentVO;
import co.mini.prj.coment.serviceimpl.ComentServiceImpl;
import co.mini.prj.common.Command;

public class ComentEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ComentService dao = new ComentServiceImpl();
		ComentVO vo = new ComentVO();
		vo.setComentConum(Integer.valueOf(request.getParameter("comentConum")));
		vo.setComentNum(Integer.valueOf(request.getParameter("comentNum")));
		vo.setComentContent(request.getParameter("comentContent"));
		vo.setComentWriter(request.getParameter("comentWriter").trim());
		vo.setBoardNum(Integer.valueOf(request.getParameter("boardNum")));

		String viewPage = "coment/comentError";

		int a = dao.ComentUpdate(vo);
		if (a != 0) {
			viewPage = "boardSelect.do";
		} else {
			request.setAttribute("message", "ㅇㅇ");
		}

		return viewPage;
	}

}
