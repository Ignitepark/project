package co.mini.prj.member.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.mini.prj.common.DataSource;
import co.mini.prj.mapper.MemberMapper;
import co.mini.prj.member.service.MemberService;
import co.mini.prj.member.service.MemberVO;
import co.mini.prj.member.service.MemberVOC;
import co.mini.prj.member.service.MemberVOCT;

public class MemberServiceImpl implements MemberService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);

	@Override
	public List<MemberVO> memberSelectList(String str) {
		if (str == null) {
			str = "all";
		}
		return map.memberSelectList(str);
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		return map.memberDelete(vo);
	}

	@Override
	public boolean isMemberId(String id) {
		return map.isMemberId(id);
	}

	@Override
	public int memberInsertData(MemberVOC voc) {
		return map.memberInsertData(voc);
	}

	@Override
	public int memberInsertTr(MemberVOCT voct) {
		return map.memberInsertTr(voct);
	}

	@Override
	public int memberUpdateData(MemberVOC voc) {
		return map.memberUpdateData(voc);
	}

	@Override
	public int memberUpdateTr(MemberVOCT voct) {
		return map.memberUpdateTr(voct);
	}

	@Override
	public MemberVO memberSearch(MemberVO vo) {
		return map.memberSearch(vo);
	}

	@Override
	public MemberVOC memberSelectData(int no) {
		return map.memberSelectData(no);
	}

	@Override
	public MemberVOCT memberSelectTr(int no) {
		return map.memberSelectTr(no);
	}

}
