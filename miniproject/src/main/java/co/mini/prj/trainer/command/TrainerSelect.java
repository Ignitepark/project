package co.mini.prj.trainer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;
import co.mini.prj.trainer.service.TrainerService;
import co.mini.prj.trainer.service.TrainerVO;
import co.mini.prj.trainer.serviceImpl.TrainerServiceImpl;

public class TrainerSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//Ʈ���̳� ������ȸ
		TrainerService dao = new TrainerServiceImpl();
		TrainerVO vo = new TrainerVO();
		vo.setMemberId(request.getParameter("id")); 
		vo.setProductId(request.getParameter("idd"));
		vo=dao.trainerSelect(vo); 
		request.setAttribute("trainer", vo); 
		
		return "trainer/trainerSelect";
	}

}
