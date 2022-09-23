package co.mini.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.MainCommand;
import co.mini.prj.board.command.BoardDelete;
import co.mini.prj.board.command.BoardEdit;
import co.mini.prj.board.command.BoardEditForm;
import co.mini.prj.board.command.BoardInsert;
import co.mini.prj.board.command.BoardSelect;
import co.mini.prj.board.command.BoardSelectList;
import co.mini.prj.board.command.BoardWriteForm;
import co.mini.prj.common.Command;
import co.mini.prj.mark.command.InsertMark;
import co.mini.prj.mark.command.InsertMarkForm;
import co.mini.prj.member.command.AjaxMemberIdCheck;
import co.mini.prj.member.command.MemberInsert;
import co.mini.prj.member.command.MemberInsertForm;
import co.mini.prj.member.command.MemberLogin;
import co.mini.prj.pay.command.PayDelete;
import co.mini.prj.pay.command.PayInsert;
import co.mini.prj.pay.command.PaySelect;
import co.mini.prj.pay.command.PaySelectList;
import co.mini.prj.pay.command.PayUpdate;
import co.mini.prj.point.command.PointInsert;
import co.mini.prj.point.command.PointSelectList;
import co.mini.prj.product.command.ProductDelete;
import co.mini.prj.product.command.ProductInsert;
import co.mini.prj.product.command.ProductSelect;
import co.mini.prj.product.command.ProductSelectList;
import co.mini.prj.product.command.ProductUpdate;
import co.mini.prj.trainer.command.TrainerSelect;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<>();

	public FrontController() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
		// 명령집단 저장

		// 다슬
		map.put("/main.do", new MainCommand());
		map.put("/productSelectList.do", new ProductSelectList());
		map.put("/productSelect.do", new ProductSelect());
		map.put("/productInsert.do", new ProductInsert());
		map.put("/productUpdate.do", new ProductUpdate());
		map.put("/productDelete.do", new ProductDelete());
		map.put("/trainerSelect.do", new TrainerSelect());

		// 순탁
		map.put("/boardSelectList.do", new BoardSelectList());
		map.put("/boardWriteForm.do", new BoardWriteForm());
		map.put("/boardInsert.do", new BoardInsert());
		map.put("/boardSelect.do", new BoardSelect());
		map.put("/boardEditForm.do", new BoardEditForm());
		map.put("/boardEdit.do", new BoardEdit());
		map.put("/boardDelete.do", new BoardDelete());

		// 소람
		map.put("/insertMarkForm.do", new InsertMarkForm()); // 평가 입력폼
		map.put("/insertMark.do", new InsertMark()); // 평가입력

		// 정욱
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberInsertForm.do", new MemberInsertForm());
		map.put("/ajaxMemberIdCheck.do", new AjaxMemberIdCheck());

		// 승현
		map.put("/paySelectList.do", new PaySelectList());
		map.put("/paySelect.do", new PaySelect());
		map.put("/payInsert.do", new PayInsert());
		map.put("/payUpdate.do", new PayUpdate());
		map.put("/payDelete.do", new PayDelete());

		map.put("/pointSelectList.do", new PointSelectList());
		map.put("/pointInsert.do", new PointInsert());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실제 수행할 서비스
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) { // Ajax
				// response 객체가 가진 컨텐츠 타입을 바꿔줘라
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			} else {
//				viewPage = "/WEB-INF/views/" + viewPage + ".jsp";
//				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
//				dispatcher.forward(request, response);
				if (viewPage.startsWith("no:")) { // tiles X
					viewPage = "/WEB-INF/views/" + viewPage.substring(3) + ".jsp";
				} else {
					viewPage = viewPage + ".tiles"; // tiles O
					// 어디로 가라고 돌려주는 거
					RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
					dispatcher.forward(request, response);
				}
			}
		} else {
			// 권한 위임
			response.sendRedirect(viewPage); // .do return시
		}
	}

}
