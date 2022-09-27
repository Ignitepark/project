package co.mini.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.common.Command;

public class BoardGoodDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService dao = new BoardServiceImpl();
		HttpSession session = request.getSession();
		int boardNum = Integer.parseInt(String.valueOf(session.getAttribute("nowPage")));
//		int memberNum = Integer.parseInt(String.valueOf(session.getAttribute("memberNum")));
		int memberNum = 100;
		dao.boardGoodDelete(boardNum, memberNum);

		return "boardSelect.do";
	}

}
