package co.mini.prj.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class ProductDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품 삭제
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(request.getParameter("id"));
		int n = dao.productDelete(vo);
		String viewPage="notice/noticeError";		
		if(n != 0) {
			viewPage = "productSelectList.do";
		}else {
			request.setAttribute("message", "삭제가 실패했습니다.");
		}
		
		return viewPage;
	}

}
