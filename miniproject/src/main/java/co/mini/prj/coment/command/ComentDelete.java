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
		vo.setComentConum(Integer.valueOf(request.getParameter("comentConum")));
		vo.setComentNum(Integer.valueOf(request.getParameter("comentNum")));
		vo.setBoardNum(Integer.valueOf(request.getParameter("boardNum")));
		System.out.println(vo.getBoardNum());
		System.out.println(vo.getComentNum());
		System.out.println(vo.getComentConum());
		String viewPage = "coment/comentError";
		int a = dao.ComentDelete(vo);

		
		if (a != 0) {
			viewPage = "boardSelect.do";
		} else {
			request.setAttribute("message", "삭제에 실패하였습니다!");
		}

		return viewPage;
	}

}
