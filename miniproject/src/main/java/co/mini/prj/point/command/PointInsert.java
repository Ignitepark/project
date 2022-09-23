package co.mini.prj.point.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.service.PointService;
import co.mini.prj.service.PointVO;
import co.mini.prj.serviceImpl.PointServiceImpl;

public class PointInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PointService dao = new PointServiceImpl();
		PointVO vo = new PointVO();
		String viewPage = "point/pointError";
		
		vo.setMemberId(request.getParameter("memberId"));
		
		int result = dao.pointInsert(vo);
		if (result != 0) {
			viewPage = "payInsert.do";
		} else {
			request.setAttribute("message", "실패");
		}
		return viewPage;
	}

}
