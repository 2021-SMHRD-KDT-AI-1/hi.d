package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.VO.memberVO;
import com.command.Command;

public class LoginCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		System.out.println("con¡¢º”");
		memberDAO dao = new memberDAO();
		memberVO vo = dao.Login(email, pw);
		
		if (vo != null) {
			HttpSession session = request.getSession(); 
			session.setAttribute("vo", vo);
			moveURL = "choice.jsp";
		} else {
			
			moveURL = "login.jsp";
		}
		
		return moveURL;
		
	
	}

}
