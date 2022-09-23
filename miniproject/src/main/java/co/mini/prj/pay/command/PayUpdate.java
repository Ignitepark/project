package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.serviceImpl.PayServiceImpl;

public class PayUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		vo.setPayNum(Integer.valueOf(request.getParameter("payNum")));
		vo.setPayPlan(request.getParameter("payPlan"));
		vo.setPayPrice(Integer.valueOf(request.getParameter("payPrice")));
		
		String viewPage = "pay/payError";
		int result = dao.payUpdate(vo);
		
		if(result != 0) {
			request.setAttribute("vo", vo);
			viewPage = "pay/pay";
		} else {
			request.setAttribute("message", "실패");
		}
		return viewPage;
	}

}
