package co.mini.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.common.Command;


public class BoardSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardNum(Integer.valueOf(request.getParameter("num")));
		
		vo = dao.boardSelect(vo);
		
		if(vo != null) {
			dao.boardHitUpdate(vo.getBoardNum());
			request.setAttribute("vo", vo);
		}
		return "board/boardSelect";
}

}