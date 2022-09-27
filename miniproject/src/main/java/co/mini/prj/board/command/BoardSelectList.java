package co.mini.prj.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.common.Command;

public class BoardSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		BoardService dao = new BoardServiceImpl();

		List<BoardVO> list = new ArrayList<BoardVO>();
		List<BoardVO> noticeList = new ArrayList<BoardVO>();
		List<BoardVO> resultList = new ArrayList<BoardVO>();
		String str = "";
		String searchVal = "";
		String searchMenu = "MENU";
		int pageNum = 0;
		int pageAmount = 0;
		if (request.getParameter("str") != null) {
			session.setAttribute("str", str);
			session.setAttribute("searchMenu", "MENU");
		}
		if (request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			session.setAttribute("pageNum", pageNum);
		}
		if (request.getParameter("pageAmount") != null) {
			pageAmount = Integer.parseInt(request.getParameter("pageAmount"));
			session.setAttribute("pageAmount", pageAmount);
		}
		if (session.getAttribute("pageNum") != null) {
			pageNum = (int) session.getAttribute("pageNum");
		}
		if (session.getAttribute("pageAmount") != null) {
			pageAmount = (int) session.getAttribute("pageAmount");
		}
		if (session.getAttribute("str") != null) {
			str = (String) session.getAttribute("str");
		}
		if (request.getParameter("search") != null && request.getParameter("searchMenu") != null) {
			searchMenu = request.getParameter("searchMenu");
			searchVal = request.getParameter("search");
			session.setAttribute("searchMenu", searchMenu);
			session.setAttribute("search", searchVal);
		} else if (session.getAttribute("searchMenu") != null && session.getAttribute("search") != null) {
			searchMenu = (String) session.getAttribute("searchMenu");
			searchVal = (String) session.getAttribute("search");
		}
//		공지사항 최근 5개 골라주는 부분
		list = dao.boardSelectList("NOTICE", "MENU", "");
		for (int i = 0; i < 5; i++) {
			noticeList.add(list.get(i));
		}
		request.setAttribute("noticeList", noticeList);
//
		str = "";
		list = dao.boardSelectList(str, searchMenu, searchVal);
		if (list.size() < pageAmount) {
			request.setAttribute("list", list);
		} else {
			if (list.size() < pageAmount * pageNum) {
				for (int i = pageAmount * (pageNum - 1); i < list.size(); i++) {
					resultList.add(list.get(i));
					request.setAttribute("list", resultList);
				}
			} else {
				for (int i = (pageNum - 1) * pageAmount; i < pageAmount * (pageNum); i++) {
					resultList.add(list.get(i));
					request.setAttribute("list", resultList);
				}
			}
		}
		int totalPageNum = (list.size() % pageAmount == 0) ? list.size() / pageAmount : list.size() / pageAmount + 1;
		int[] pageList = new int[5];
		if (totalPageNum < 5) {
			pageList = new int[totalPageNum];
			for (int i = 0; i < totalPageNum; i++) {
				pageList[i] = i + 1;
			}
		} else if (pageNum <= 3) {
			for (int i = 0; i < 5; i++) {
				pageList[i] = i + 1;
			}
		} else if (pageNum + 2 < totalPageNum) {
			for (int i = 0; i < 5; i++) {
				pageList[i] = pageNum - 2 + i;
			}
		} else if (totalPageNum <= pageNum + 2) {
			for (int i = 4; i >= 0; i--) {
				pageList[i] = totalPageNum - 4 + i;
			}
		}

		request.setAttribute("pageList", pageList);
		request.setAttribute("totalPageNum", totalPageNum);
		return "board/boardSelectList";
	}

}
