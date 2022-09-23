package co.mini.prj.service;

import java.util.List;

public interface PayService {
	List<PayVO> paySelectList(String str);
	PayVO paySelect(PayVO vo);
	int payInsert(PayVO vo);
	int payUpdate(PayVO vo);
	int payDelete(PayVO vo);
}
