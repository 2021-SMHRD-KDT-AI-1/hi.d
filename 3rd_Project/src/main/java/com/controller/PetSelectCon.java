package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.feedDAO;
import com.DAO.memberDAO;
import com.DAO.petDAO;
import com.VO.feedVO;
import com.VO.memberVO;
import com.VO.petVO;
import com.command.Command;

public class PetSelectCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		HttpSession session = request.getSession();
		
		memberVO vo = (memberVO)session.getAttribute("vo");
		
		 session.setAttribute("vo", vo.getEmail());
		 
		 petVO vo_new = (petVO)session.getAttribute("vo");
		 
		 petDAO dao = new petDAO();
		 ArrayList<petVO> petInfoList = dao.pet_select(vo_new.getEmail());
		
		if (vo_new != null) {
			session.setAttribute("vo", vo_new);
			moveURL = "index.jsp";
		} else {
			
			moveURL = "choice.jsp";
		}
		
		return moveURL;
		
	}

}
