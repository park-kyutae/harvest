package kr.event.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.controller.Action;

public class EventWriteFormAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		  HttpSession session = request.getSession(); Integer user_num =
		  (Integer)session.getAttribute("user_num");
		 
		
		  if(user_num == null) {//로그인이 되지 않은 경우 
			  return "redirect:/member/loginUserForm.do";
		  }
		 
		
		return "/WEB-INF/views/event/eventWriteForm.jsp";
	}

}
