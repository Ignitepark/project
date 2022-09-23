package co.mini.prj.mark.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MarkVO {
	private String memberId;
	private String trainerId;
	private int trainerMark;
	private Date markDate;
}
