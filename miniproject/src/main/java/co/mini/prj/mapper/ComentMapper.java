package co.mini.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.mini.prj.coment.service.ComentVO;

public interface ComentMapper {
	List<ComentVO> comentSelectList(@Param("num") int num, @Param("str") String str);

	ComentVO comentSelect(ComentVO vo);

	int ComentInsert(ComentVO vo);

	int CocomentInsert(ComentVO vo);

	int ComentUpdate(ComentVO vo);

	int ComentDelete(ComentVO vo);

	void ComentHitUpdate(int num);

}
