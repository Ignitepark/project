package co.mini.prj.coment.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.prj.common.Command;

public class ComentWriteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "coment/comentWriteForm";
	}

}
