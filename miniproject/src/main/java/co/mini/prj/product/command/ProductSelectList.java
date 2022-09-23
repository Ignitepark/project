package co.mini.prj.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.product.service.ProductVO;
import co.mini.prj.product.service.ProductService;
import co.mini.prj.product.serviceImpl.ProductServiceImpl;

public class ProductSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 제품 전체 조회

		ProductService dao = new ProductServiceImpl();
		List<ProductVO> product = new ArrayList<>();
		product=dao.productSelectList();
		request.setAttribute("product", product);
		return "product/productSelectList";
	}

}
