package co.mini.prj.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.common.Command;

public class BoardSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<BoardVO> list = new ArrayList<>();

		BoardService dao = new BoardServiceImpl();
		String str = request.getParameter("str");
		list = dao.boardSelectList(str);
		request.setAttribute("list", list);

		return "board/boardSelectList";
	}

}
