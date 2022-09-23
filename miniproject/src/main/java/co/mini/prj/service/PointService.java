package co.mini.prj.service;

import java.util.List;

public interface PointService {
	List<PointVO> pointSelectList();
	PointVO pointSelect(PointVO vo);
	int pointInsert(PointVO vo);
	int pointDelete(PointVO vo);
	int pointUpdate(PointVO vo);
}
