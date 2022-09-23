package co.mini.prj.product.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
//	PRODUCT_ID	VARCHAR2(20 BYTE)
//	PRICE	NUMBER
//	COUNT	NUMBER
//	PRODUCT_NAME	VARCHAR2(20 BYTE)
//	PRODUCT_TYPE	VARCHAR2(20 BYTE)
	
	private String productId;
	private int price;
	private int count;
	private String productName;
	private String productType;
}
