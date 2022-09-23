package co.mini.prj.mapper;

import java.util.List;

import co.mini.prj.service.PointVO;

public interface PointMapper {
	List<PointVO> pointSelectList();
	PointVO pointSelect(PointVO vo);
	int pointInsert(PointVO vo);
	int pointDelete(PointVO vo);
	int pointUpdate(PointVO vo);
}
