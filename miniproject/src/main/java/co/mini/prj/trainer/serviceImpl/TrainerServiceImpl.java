package co.mini.prj.trainer.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.ProductMapper;
import co.mini.prj.mapper.TrainerMapper;
import co.mini.prj.trainer.service.TrainerService;
import co.mini.prj.trainer.service.TrainerVO;

public class TrainerServiceImpl implements TrainerService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private TrainerMapper map = sqlSession.getMapper(TrainerMapper.class);

	@Override
	public TrainerVO trainerSelect(TrainerVO vo) {
		// TODO Auto-generated method stub
		return map.trainerSelect(vo);
	}

}
