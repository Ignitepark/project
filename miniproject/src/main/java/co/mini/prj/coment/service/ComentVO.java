package co.mini.prj.coment.service;


import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ComentVO {
	private int comentNum;
	private int comentConum;
	private String comentContnet;
	private String comentWriter;
	private Date comentDate;
	private String comentType;
}
