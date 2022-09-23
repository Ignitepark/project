package co.mini.prj.pay.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.serviceImpl.PayServiceImpl;

public class PaySelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PayService dao = new PayServiceImpl();
		List<PayVO> list = new ArrayList<PayVO>();
		String str = request.getParameter("str");
		list = dao.paySelectList(str);
		request.setAttribute("list", list);
		return "pay/paySelectList";
	}

}
