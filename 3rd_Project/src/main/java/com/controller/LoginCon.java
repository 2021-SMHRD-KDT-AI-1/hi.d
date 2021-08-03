package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.DAO.petDAO;
import com.VO.memberVO;
import com.VO.petVO;
import com.command.Command;

public class LoginCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		memberDAO dao = new memberDAO();
		memberVO vo = dao.Login(email, pw);
		
		
		if (vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			petDAO dao_pet = new petDAO();
			ArrayList<petVO> vo_arr = dao_pet.pet_select(vo.getEmail());
			session.setAttribute("vo_arr", vo_arr);
			moveURL = "choice.jsp";
		} else {
			moveURL = "login.jsp";
		}
		
		return moveURL;
		
	
	}

}
