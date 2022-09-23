package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.serviceImpl.PayServiceImpl;

public class PaySelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		vo.setPayNum(Integer.valueOf(request.getParameter("pn")));
		vo = dao.paySelect(vo);
		request.setAttribute("pay", vo);
		return "pay/paySelect";
	}

}
