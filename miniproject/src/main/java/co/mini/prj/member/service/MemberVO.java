package co.mini.prj.member.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private int memberNo;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberNickName;
	private Date memberAge;
	private String memberTel;
	private String memberAuthor;
}
