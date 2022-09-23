package co.mini.prj.board.serviceimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.BoardMapper;

public class BoardServiceImpl implements BoardService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BoardMapper map = sqlSession.getMapper(BoardMapper.class);
	@Override
	public List<BoardVO> boardSelectList(String str) {
		// TODO Auto-generated method stub
		return map.boardSelectList(str);
	}

	@Override
	public BoardVO boardSelect(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardSelect(vo);
	}

	@Override
	public int boardInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardInsert(vo);
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardUpdate(vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardDelete(vo);
	}

	@Override
	public void boardHitUpdate(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardVO> boardSearchList(String key, String val) {
		// TODO Auto-generated method stub
		return map.boardSearchList(key, val);
	}

}