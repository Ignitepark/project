package co.mini.prj.mapper;

import java.util.List;

import co.mini.prj.mark.service.MarkVO;

public interface MarkMapper {
	List<MarkVO> markSelectList();
	MarkVO markSelect(MarkVO vo); // 평점출력
	int markInsert(MarkVO vo);
	int markUpdate(MarkVO vo);
	int markDelete(MarkVO vo);
}
