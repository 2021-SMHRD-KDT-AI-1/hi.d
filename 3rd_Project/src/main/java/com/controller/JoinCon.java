package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;
import com.command.Command;

public class JoinCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");	
		
		memberDAO dao = new memberDAO();
		int cnt = dao.Join(email, pw);
		
		
		if (cnt > 0) {
			moveURL = "choice.jsp";
		}
		
		return moveURL;
	}

		
		
	
}
