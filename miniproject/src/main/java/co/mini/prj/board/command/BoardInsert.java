package co.mini.prj.board.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.mini.prj.board.service.BoardService;
import co.mini.prj.board.service.BoardVO;
import co.mini.prj.board.serviceimpl.BoardServiceImpl;
import co.mini.prj.common.Command;

public class BoardInsert implements Command {
//	private String saveFolder = "c:\\fileUploadTest"; // ���������� ������ ����
//	private String charactSet = "utf-8"; // �ѱ۱��� ���� (���۵Ǵ� ���ڿ� ���ڵ�Ÿ��)
//	private int maxSize = 1024 * 1024 * 1024; // ���ε��� ���� �ִ� ������

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// �������� ���
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		String viewPage = "board/boardError";
		String str = "";
//		String filename = "";
//		String originalFileName = "";
//		try {
//			MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, charactSet,
//					new DefaultFileRenamePolicy());
//			filename = multi.getFilesystemName("file");
//			originalFileName = multi.getOriginalFileName("file");
//			vo.setBoardWriter(multi.getParameter("boardWriter"));
//			vo.setBoardDate(Date.valueOf(multi.getParameter("boardDate")));
//			vo.setBoardTitle(multi.getParameter("boardTitle"));
//			vo.setBoardContent(multi.getParameter("boardContent"));
//			vo.setBoardAttech(originalFileName);
//			vo.setBoardAttechDir(saveFolder + File.separator + filename);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		vo.setBoardWriter(request.getParameter("boardWriter"));
		vo.setBoardDate(Date.valueOf(request.getParameter("boardDate")));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardContent(request.getParameter("boardContent"));
		vo.setBoardType(request.getParameter("boardType"));

		int a = dao.boardInsert(vo);

		if (a != 0) {
			viewPage = "boardSelectList.do";
		} else {
			request.setAttribute("message", "입력에 실패.");
		}
		return viewPage;
	}

}
