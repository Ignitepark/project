package co.mini.prj.coment.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.coment.service.ComentService;
import co.mini.prj.coment.service.ComentVO;
import co.mini.prj.coment.serviceimpl.ComentServiceImpl;
import co.mini.prj.common.Command;

public class ComentInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ComentService dao = new ComentServiceImpl();
		ComentVO vo = new ComentVO();
		int a = 0;
		String viewPage = "coment/comentError";
		String str = "CO";

//		vo.setComentWriter((String)session.getAttribute("memberNickName"));
		vo.setComentWriter("테스트");
		vo.setComentContent(request.getParameter("comentContent"));
		vo.setBoardNum(Integer.valueOf(request.getParameter("bonum")));
		if (Integer.parseInt(request.getParameter("conum")) != 0) {
			vo.setComentConum(Integer.valueOf(request.getParameter("conum")));
			str = "COCO";
			vo.setComentType(str);
			a = dao.CocomentInsert(vo);
		} else {
			vo.setComentType(str);
			a = dao.ComentInsert(vo);
		}
		if (a != 0) {
			viewPage = "boardSelect.do";
		} else {
			request.setAttribute("message", "����!!");
		}
		return viewPage;
	}
}