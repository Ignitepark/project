package co.mini.prj.coment.service;

import java.util.List;

public interface ComentService {
	List<ComentVO> comentSelectList(int num, String str);

	ComentVO comentSelect(ComentVO vo);

	int ComentInsert(ComentVO vo);
	
	int CocomentInsert(ComentVO vo);

	int ComentUpdate(ComentVO vo);

	int ComentDelete(ComentVO vo);

	void ComentHitUpdate(int num);
}
