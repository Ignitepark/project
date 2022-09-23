package co.mini.prj.coment.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.coment.service.ComentService;
import co.mini.prj.coment.service.ComentVO;
import co.mini.prj.coment.serviceimpl.ComentServiceImpl;
import co.mini.prj.common.Command;

public class ComentEditForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ComentService dao = new ComentServiceImpl();
		ComentVO vo = new ComentVO();
		vo.setComentConum(Integer.valueOf(request.getParameter("num")));
		vo = dao.comentSelect(vo);
		request.setAttribute("vo", vo);
	
		return "coment/comentEditForm";
	}

}
