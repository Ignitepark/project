package co.mini.prj.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVOC extends MemberVO {
	private String memberAddress;
	private double memberHeight;
	private double memberWeight;
	private String memberGender;
}
