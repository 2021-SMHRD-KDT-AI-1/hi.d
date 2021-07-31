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
		String getEmail = (String) session.getAttribute("email");
		speciesVO getSpecies = (speciesVO) session.getAttribute("CorD");
		
		
		String pet_profile = request.getParameter("photo");	
		String pet_nick = request.getParameter("pet_nick");
		String pet_gen = request.getParameter("radio_gender");	
		String cord = request.getParameter("radio_pet");	
		String pet_introduce = request.getParameter("content");	
		String species_list = request.getParameter("species_list");
		
		petVO vo = new petVO(pet_nick, pet_profile,pet_introduce, pet_gen, species_list);
		petDAO dao = new petDAO();
		int cnt = dao.PetJoin(vo);
		
		System.out.println(pet_profile);
		System.out.println(pet_nick);
		System.out.println(pet_gen);
		System.out.println(cord);
		System.out.println(pet_introduce);
		System.out.println(species_list);
		
		if (cnt > 0) {
			petVO vo_new  = new petVO(pet_nick, pet_profile, pet_introduce, pet_gen, cord, species_list, getEmail);
			session.setAttribute("vo", vo_new);
			moveURL = "choice.jsp";
		}
		
		return moveURL;
	
	}
}
