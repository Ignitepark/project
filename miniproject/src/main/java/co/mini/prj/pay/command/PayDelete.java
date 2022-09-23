package co.mini.prj.pay.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;
import co.mini.prj.serviceImpl.PayServiceImpl;

public class PayDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		PayService dao = new PayServiceImpl();
		PayVO vo = new PayVO();
		vo.setPayNum(Integer.valueOf(request.getParameter("payNum")));
		
		String viewPage = "pay/payError";
		int result = dao.payDelete(vo);
		if (result != 0) {
			viewPage = "paySelectList.do";
		} else {
			request.setAttribute("message", "실패");
		}
		return viewPage;
	}

}
