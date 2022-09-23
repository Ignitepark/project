package co.mini.prj.board.service;

import java.util.List;

public interface BoardService {
	List<BoardVO> boardSelectList(String str);
	BoardVO boardSelect(BoardVO vo);
	int boardInsert(BoardVO vo);
	int boardUpdate(BoardVO vo);
	int boardDelete(BoardVO vo);
	
	void boardHitUpdate(int num);  // �Խñ� ��ȸ�� �ø��°� 
	// 
	List<BoardVO> boardSearchList(String key, String val); // �Խñ� �˻�
}
