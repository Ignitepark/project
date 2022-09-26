package co.mini.prj.coment.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.coment.service.ComentService;
import co.mini.prj.coment.service.ComentVO;
import co.mini.prj.coment.serviceimpl.ComentServiceImpl;
import co.mini.prj.common.Command;

public class ComentSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		List<ComentVO> list = new ArrayList<>();

		ComentService dao = new ComentServiceImpl();
		String str = request.getParameter("str");
		list = dao.comentSelectList(str);
		request.setAttribute("list", list);
		

		return "coment/comentSelectList";
	}

}
