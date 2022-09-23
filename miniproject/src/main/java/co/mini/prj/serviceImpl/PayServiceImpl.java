package co.mini.prj.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.PayMapper;
import co.mini.prj.service.PayService;
import co.mini.prj.service.PayVO;

public class PayServiceImpl implements PayService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	PayMapper map = sqlSession.getMapper(PayMapper.class);
	
	@Override
	public List<PayVO> paySelectList(String str) {
		return map.paySelectList(str);
	}

	@Override
	public PayVO paySelect(PayVO vo) {
		return map.paySelect(vo);
	}

	@Override
	public int payInsert(PayVO vo) {
		// TODO Auto-generated method stub
		return map.payInsert(vo);
	}

	@Override
	public int payUpdate(PayVO vo) {
		// TODO Auto-generated method stub
		return map.payUpdate(vo);
	}

	@Override
	public int payDelete(PayVO vo) {
		// TODO Auto-generated method stub
		return map.payDelete(vo);
	}

}
