package co.mini.prj.coment.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.coment.service.ComentService;
import co.mini.prj.coment.service.ComentVO;
import co.mini.prj.coment.serviceimpl.ComentServiceImpl;
import co.mini.prj.common.Command;

public class ComentInsert implements Command {
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ComentService dao = new ComentServiceImpl();
		
		ComentVO  vo = new ComentVO();
		String viewPage = "coment/comentError";
		String str = "";
		
		vo.setComentWriter(request.getParameter("comentWriter"));
		vo.setComentDate(Date.valueOf(request.getParameter("comentDate")));
		vo.setComentContnet(request.getParameter("comentContent"));
		
		int a = dao.ComentInsert(vo);
		if (a != 0) {
			viewPage = "comentSelectList.do";
		} else {
			request.setAttribute("message", "등록 실패 !!");
		}
		
		return viewPage;
		
		

	}

}