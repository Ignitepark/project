package co.mini.prj.mark.service;

import java.util.List;

public interface MarkService {
	List<MarkVO> markSelectList();
	MarkVO markSelect(MarkVO vo);
	int markInsert(MarkVO vo);
	int markUpdate(MarkVO vo);
	int markDelete(MarkVO vo);
}
