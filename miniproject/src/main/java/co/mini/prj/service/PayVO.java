package co.mini.prj.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PayVO {

	private int payNum;
	private String payPlan;
	private int payPrice;
	private String memberId;
	private String payProduct;
	private Date payDate;

}
