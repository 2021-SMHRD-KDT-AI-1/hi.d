package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.petDAO;
import com.VO.pet_followVO;
import com.command.Command;

public class profileCon implements Command{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		
		HttpSession session = request.getSession();
		int profile_owner_num = Integer.parseInt(request.getParameter("owner"));
		petDAO dao = new petDAO();
		
		pet_followVO profile = dao.pet_profile_load(profile_owner_num);
		
		session.setAttribute("profile", profile);
		
		return moveURL;
	}
}
