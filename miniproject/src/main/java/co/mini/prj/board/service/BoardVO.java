package co.mini.prj.board.service;


import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private int boardNum; 
	private String boardTitle; 
	private String boardWriter; 
	private String boardContent; 
	private String boardHit; 
	private Date boardDate;
	private String boardType; 
	private String boardAttech;
	private String boardAttechDir;
}
