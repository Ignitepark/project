package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.serviceImpl.PayServiceImpl;

public class PayInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		String viewPage = "pay/payError";
		
		vo.setPayPlan(request.getParameter("payPlan"));
		vo.setPayPrice(Integer.valueOf(request.getParameter("price")));
		vo.setMemberId(request.getParameter("memberId"));
		vo.setPayProduct(request.getParameter("productId"));
		
		int result = dao.payInsert(vo);
		if (result != 0) {
			viewPage = "paySelectList.do";
		} else {
			request.setAttribute("message", "결제 실패");
		}
		return viewPage;
	}

}
