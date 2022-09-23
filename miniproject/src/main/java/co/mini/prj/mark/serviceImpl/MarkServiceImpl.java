package co.mini.prj.mark.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.MarkMapper;
import co.mini.prj.mark.service.MarkService;
import co.mini.prj.mark.service.MarkVO;


public class MarkServiceImpl implements MarkService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MarkMapper map = sqlSession.getMapper(MarkMapper.class);

	@Override
	public List<MarkVO> markSelectList() {
		// 평가 리스트 출력
		return map.markSelectList();
	}

	@Override
	public MarkVO markSelect(MarkVO vo) {
		// 평가 1건 출력
		return map.markSelect(vo);
	}

	@Override
	public int markInsert(MarkVO vo) {
		// 평가 입력
		return map.markInsert(vo);
	}

	@Override
	public int markUpdate(MarkVO vo) {
		// 평가 수정
		return map.markUpdate(vo);
	}

	@Override
	public int markDelete(MarkVO vo) {
		// 평가 삭제
		return map.markDelete(vo);
	}

}
