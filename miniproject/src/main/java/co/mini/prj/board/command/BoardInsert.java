package co.mini.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.common.Command;

public class BoardInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		String viewPage = "board/boardError";
		vo.setBoardWriter(request.getParameter("boardWriter"));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardContent(request.getParameter("boardContent"));
		vo.setBoardType(request.getParameter("boardType"));

		int a = dao.boardInsert(vo);

		if (a != 0) {
			viewPage = "boardSelectList.do";
		} else {
			request.setAttribute("message", "입력에 실패.");
			request.setAttribute("message", "등록 실패 !!");
		}
		return viewPage;
	}

}
