package co.mini.prj.product.service;

import java.util.List;


public interface ProductService {
	List<ProductVO> productSelectList();    //전체목록 가져오기
	ProductVO productSelect(ProductVO vo);   //한 상품의 데이터 가져오기
	int productInsert(ProductVO vo);  //데이터 추가
	int productUpdate(ProductVO vo);  //데이터 갱신
	int productDelete(ProductVO vo);	//데이터 삭제	
}
