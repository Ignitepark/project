package co.mini.prj.mapper;

import java.util.List;

import co.mini.prj.service.PayVO;

public interface PayMapper {
	List<PayVO> paySelectList(String str);
	PayVO paySelect(PayVO vo);
	int payInsert(PayVO vo);
	int payUpdate(PayVO vo);
	int payDelete(PayVO vo);
}
