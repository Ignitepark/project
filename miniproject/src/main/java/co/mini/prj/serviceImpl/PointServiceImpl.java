package co.mini.prj.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.PointMapper;
import co.mini.prj.service.PointService;
import co.mini.prj.service.PointVO;

public class PointServiceImpl implements PointService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	PointMapper map = sqlSession.getMapper(PointMapper.class);
	
	@Override
	public List<PointVO> pointSelectList() {
		return map.pointSelectList();
	}

	@Override
	public PointVO pointSelect(PointVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int pointInsert(PointVO vo) {
		return map.pointInsert(vo);
	}

	@Override
	public int pointDelete(PointVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int pointUpdate(PointVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
