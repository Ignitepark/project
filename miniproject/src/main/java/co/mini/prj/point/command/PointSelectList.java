package co.mini.prj.point.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.service.PointService;
import co.mini.prj.service.PointVO;
import co.mini.prj.serviceImpl.PointServiceImpl;

public class PointSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PointService dao = new PointServiceImpl();
		List<PointVO> list = new ArrayList<PointVO>();
		list = dao.pointSelectList();
		request.setAttribute("list", list);
		return "point/pointSelectList";
	}

}
