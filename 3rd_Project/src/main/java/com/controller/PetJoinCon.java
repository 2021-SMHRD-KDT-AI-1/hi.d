package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.DAO.petDAO;
import com.VO.memberVO;
import com.VO.petVO;
import com.VO.speciesVO;
import com.command.Command;

public class PetJoinCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		HttpSession session = request.getSession();
		petVO vo_pet = (petVO) session.getAttribute("vo_pet");
		speciesVO vo_species = (speciesVO) session.getAttribute("vo_species");
		
		String photo = request.getParameter("photo");	
		String pet_nick = request.getParameter("pet_nick");
		String radio_gender = request.getParameter("radio_gender");	
		String species = request.getParameter("species");	
		String content = request.getParameter("content");	
		
		String radio_pet = request.getParameter("radio_pet");
		
		
		System.out.println(pet_nick);
		System.out.println(radio_pet);
		
		petDAO dao = new petDAO();
		
		int cnt = dao.PetJoin(vo_pet);
		
		if (cnt > 0) {
			petVO vo_new  = new petVO(pet_nick, photo,  content, radio_gender, vo_species.getCorD(), vo_pet.getEmail());
			session.setAttribute("vo", vo_new);
			moveURL = "choice.jsp";
		}
		
		return moveURL;
	
	}
}
