package co.mini.prj.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class ProductInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품 추가
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(request.getParameter("productId"));
		vo.setPrice(Integer.valueOf(request.getParameter("price")));
		vo.setCount(Integer.valueOf(request.getParameter("count")));
		vo.setProductName(request.getParameter("productName"));
		vo.setProductType(request.getParameter("productType"));
		int n = dao.productInsert(vo);
		String viewPage=null; //돌려줄페이지
		if(n != 0) {
		//	request.setAttribute("message", "정상적으로 입력이 되었습니다.");
			viewPage="productSelect.do";
		} else {
			request.setAttribute("message", "상품 등록이 실패했습니다.");
			viewPage = "product/productMessage";
		}
		return viewPage;
	}

}
