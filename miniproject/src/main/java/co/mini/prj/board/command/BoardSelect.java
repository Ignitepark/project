package co.mini.prj.board.command;

import java.util.ArrayList;
import java.util.List;

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

public class BoardSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService dao = new BoardServiceImpl();
		ComentService cdao = new ComentServiceImpl();
		BoardVO vo = new BoardVO();
		HttpSession session = request.getSession();
		List<ComentVO> colist = new ArrayList<ComentVO>();
		List<ComentVO> cocolist = new ArrayList<ComentVO>();
		System.out.println(request.getParameter("id"));
		int num = 0;
		if (request.getParameter("id") == null) {
			num = Integer.parseInt(String.valueOf(session.getAttribute("nowPage")));
		} else {
			num = Integer.valueOf(request.getParameter("id"));
			session.setAttribute("nowPage", num);
		}
		String str = "CO";
		vo.setBoardNum(num);
		dao.boardHitUpdate(num);

		vo = dao.boardSelect(vo);

		int goodNum = 0;
		int memberNum = 0;
		goodNum = dao.boardGoodExist(num, memberNum);
		request.setAttribute("goodNum", goodNum);
//		memberNum = Integer.parseInt(String.valueOf(session.getAttribute("memberNum")));
		memberNum = 100;
		int isGood = dao.boardGoodExist(num, memberNum);
		request.setAttribute("isGood", isGood);

		if (vo != null) {
			request.setAttribute("vo", vo);
		}

		colist = cdao.comentSelectList(num, str);
		if (colist != null) {
			request.setAttribute("coments", colist);
			str = "COCO";
			cocolist = cdao.comentSelectList(num, str);
			if (cocolist != null) {
				request.setAttribute("cocoments", cocolist);
			}
		}
		return "board/boardSelect";
	}

}