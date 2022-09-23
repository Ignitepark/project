package co.mini.prj.coment.command;

import java.sql.Date;

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
		vo.setComentDate(Date.valueOf(request.getParameter("comentDate")));
		vo.setComentNum(Integer.valueOf(request.getParameter("comentNum")));
		vo.setComentContnet(request.getParameter("comentContent"));
		
		String viewPage = "coment/comentError";
		
		int a = dao.ComentUpdate(vo);
		if(a != 0) {
			vo = dao.comentSelect(vo);
			request.setAttribute("vo", vo);
			viewPage = "coment/comentSelect";
		} else {
			request.setAttribute("message", "수정실패");
		}
		
		return viewPage;
	}

}
