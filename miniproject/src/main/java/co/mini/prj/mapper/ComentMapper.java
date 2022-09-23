package co.mini.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.mini.prj.coment.service.ComentVO;

public interface ComentMapper {
	List<ComentVO> comentSelectList(String str);
	ComentVO comentSelect(ComentVO vo);
	int ComentInsert(ComentVO vo);
	int ComentUpdate(ComentVO vo);
	int ComentDelete(ComentVO vo);
	
	void ComentHitUpdate(int num);
	List<ComentVO> comentSearchList(@Param("key") String key,@Param("val") String val);
	
}
