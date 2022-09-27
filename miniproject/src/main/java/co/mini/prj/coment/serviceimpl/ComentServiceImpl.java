package co.mini.prj.coment.serviceimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.coment.service.ComentService;
import co.mini.prj.coment.service.ComentVO;
import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.ComentMapper;

public class ComentServiceImpl implements ComentService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ComentMapper map = sqlSession.getMapper(ComentMapper.class);

	@Override
	public List<ComentVO> comentSelectList(int num, String str) {
		// TODO Auto-generated method stub
		return map.comentSelectList(num, str);
	}

	@Override
	public ComentVO comentSelect(ComentVO vo) {
		// TODO Auto-generated method stub
		return map.comentSelect(vo);
	}

	@Override
	public int ComentInsert(ComentVO vo) {
		// TODO Auto-generated method stub
		return map.ComentInsert(vo);
	}

	@Override
	public int ComentUpdate(ComentVO vo) {
		// TODO Auto-generated method stub
		return map.ComentUpdate(vo);
	}

	@Override
	public int ComentDelete(ComentVO vo) {
		// TODO Auto-generated method stub
		return map.ComentDelete(vo);
	}

	@Override
	public void ComentHitUpdate(int num) {
		// TODO Auto-generated method stub

	}

	@Override
	public int CocomentInsert(ComentVO vo) {
		// TODO Auto-generated method stub
		return map.CocomentInsert(vo);
	}

}
