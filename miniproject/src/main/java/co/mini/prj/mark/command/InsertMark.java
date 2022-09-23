package co.mini.prj.mark.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.mark.service.MarkService;
import co.mini.prj.mark.service.MarkVO;
import co.mini.prj.mark.serviceImpl.MarkServiceImpl;

public class InsertMark implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 평가 입력
		MarkService dao = new MarkServiceImpl();
		MarkVO vo = new MarkVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setTrainerId(request.getParameter("trainerId"));
		vo.setTrainerMark(Integer.valueOf(request.getParameter("trainerMark")));
//		vo.setMarkDate(Date.valueOf(request.getParameter("markDate")));
		
		int n = dao.markInsert(vo);
		String viewPage = null;
		
		if(n != 0) {
			request.setAttribute("message", "평가입력에 성공했습니다.");
			viewPage = "member/memberMessage";
		} else {
			request.setAttribute("message", "평가입력에 실패했습니다.");
			viewPage = "member/memberMessage";
		}
		
		return viewPage;
	}

}
