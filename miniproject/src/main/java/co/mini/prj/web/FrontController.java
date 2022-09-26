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
import co.mini.prj.coment.command.ComentDelete;
import co.mini.prj.coment.command.ComentEdit;
import co.mini.prj.coment.command.ComentEditForm;
import co.mini.prj.coment.command.ComentInsert;
import co.mini.prj.coment.command.ComentSelect;
import co.mini.prj.coment.command.ComentSelectList;
import co.mini.prj.coment.command.ComentWriteForm;
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
		// 정다슬
		map.put("/main.do", new MainCommand());
		map.put("/productSelectList.do", new ProductSelectList());
		map.put("/productSelect.do", new ProductSelect());
		map.put("/productInsert.do", new ProductInsert());
		map.put("/productUpdate.do", new ProductUpdate());
		map.put("/productDelete.do", new ProductDelete());
		map.put("/trainerSelect.do", new TrainerSelect());

		// 남순탁
		// 게시판
		map.put("/boardSelectList.do", new BoardSelectList());
		map.put("/boardWriteForm.do", new BoardWriteForm());
		map.put("/boardInsert.do", new BoardInsert());
		map.put("/boardSelect.do", new BoardSelect());
		map.put("/boardEditForm.do", new BoardEditForm());
		map.put("/boardEdit.do", new BoardEdit());
		map.put("/boardDelete.do", new BoardDelete());

		// 댓글
		map.put("/comentSelectList.do", new ComentSelectList());
		map.put("/comentWriteForm.do", new ComentWriteForm());
		map.put("/comentInsert.do", new ComentInsert());
		map.put("/comentSelect.do", new ComentSelect());
		map.put("/comentEditForm.do", new ComentEditForm());
		map.put("/comentEdit.do", new ComentEdit());
		map.put("/comentDelete.do", new ComentDelete());

		// �냼�엺
		map.put("/insertMarkForm.do", new InsertMarkForm()); // �룊媛� �엯�젰�뤌
		map.put("/insertMark.do", new InsertMark()); // �룊媛��엯�젰

		// 도소람
		map.put("/insertMarkForm.do", new InsertMarkForm());
		map.put("/insertMark.do", new InsertMark());

		// 진정욱
		// �젙�슧
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberInsertForm.do", new MemberInsertForm());
		map.put("/ajaxMemberIdCheck.do", new AjaxMemberIdCheck());

		// 최승현
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
		// �떎�젣 �닔�뻾�븷 �꽌鍮꾩뒪
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) { // Ajax
				// response 媛앹껜媛� 媛�吏� 而⑦뀗痢� ���엯�쓣 諛붽퓭以섎씪
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
					// �뼱�뵒濡� 媛��씪怨� �룎�젮二쇰뒗 嫄�
					RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
					dispatcher.forward(request, response);
				}
			}
		} else {
			// 沅뚰븳 �쐞�엫
			response.sendRedirect(viewPage); // .do return�떆
		}
	}

}
