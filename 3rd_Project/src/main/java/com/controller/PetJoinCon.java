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
		String email = ((memberVO)session.getAttribute("vo")).getEmail();
		speciesVO getSpecies = (speciesVO) session.getAttribute("CorD");
		
		
		String pet_profile = request.getParameter("photo");	
		String pet_nick = request.getParameter("pet_nick");
		String pet_gen = request.getParameter("radio_gender");	
		String cord = request.getParameter("radio_pet");
		String pet_introduce = request.getParameter("content");	
		String species_list = request.getParameter("species_list");
		
		petVO vo_pet = new petVO(pet_nick, pet_profile,pet_introduce, pet_gen, species_list, email);
//		vo_pet.setEmail(email);
		petDAO dao = new petDAO();
		int cnt = dao.PetJoin(vo_pet);
		
		System.out.println(email);
		System.out.println(pet_profile);
		System.out.println(pet_nick);
		System.out.println(pet_gen);
		System.out.println(cord);
		System.out.println(pet_introduce);
		System.out.println(species_list);
		
		if (cnt > 0) {
			petVO vo_new  = new petVO(pet_nick, pet_profile, pet_introduce, pet_gen, cord, species_list, email);
			session.setAttribute("vo", vo_new);
			moveURL = "choice.jsp";
		}
		
		return moveURL;
	
	}
}
