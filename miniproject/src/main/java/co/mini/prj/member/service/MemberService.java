package co.mini.prj.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> memberSelectList(String str);

	MemberVO memberSelect(MemberVO vo);

	MemberVOC memberSelectData(int no);

	MemberVOCT memberSelectTr(int no);

	MemberVO memberSearch(MemberVO vo);

	int memberInsert(MemberVO vo);

	int memberInsertData(MemberVOC voc);

	int memberInsertTr(MemberVOCT voct);

	int memberUpdate(MemberVO vo);

	int memberUpdateData(MemberVOC voc);

	int memberUpdateTr(MemberVOCT voct);

	int memberDelete(MemberVO vo);

	boolean isMemberId(String id);

}
