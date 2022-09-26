package co.mini.prj.board.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private int boardNum; // �۹�ȣ
	private String boardTitle; // ������
	private String boardWriter; // �� �ۼ���
	private String boardContent; // �� ����
	private String boardHit; // �� ��ȸ��
	private Date boardDate; // ��¥
	private String boardType; // �� Ÿ��
	private String boardAttach;
	private String boardAttachDir;
}
