package co.mini.prj.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.common.Command;

public class BoardEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// ����
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setBoardNum(Integer.valueOf(request.getParameter("boardNum")));
		vo.setBoardDate(Date.valueOf(request.getParameter("boardDate")));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardContent(request.getParameter("boardContent"));
		
		String viewPage = "board/boardError";
		int n = dao.boardUpdate(vo);
		if(n != 0) {
			vo = dao.boardSelect(vo);
			request.setAttribute("vo", vo);
			viewPage = "board/boardSelect";
		} else {
			request.setAttribute("messge", "�����Ͱ� �������� �ʾҽ��ϴ�.");
		}
		
		
		return viewPage;
	}

}
