package com.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.petDAO;
import com.VO.memberVO;
import com.VO.petVO;
import com.VO.speciesVO;
import com.command.Command;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class PetJoinCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		HttpSession session = request.getSession();
		String email = ((memberVO) session.getAttribute("vo")).getEmail();
		System.out.println(email);
		
		String pet_profile = "imgs/profile/" + request.getParameter("photo");
		System.out.println(pet_profile);
		String pet_nick = request.getParameter("pet_nick");
		String pet_gen = request.getParameter("radio_gender");
		String pet_introduce = request.getParameter("content");	
		String species_list = request.getParameter("species_list");
		
		petVO vo_pet = new petVO(pet_nick, pet_profile ,pet_introduce, pet_gen, species_list, email);
		petDAO dao_pet = new petDAO();
		int cnt = dao_pet.PetJoin(vo_pet);
		
		if (cnt > 0) {
			ArrayList<petVO> pets = dao_pet.pet_select(email);
			session.setAttribute("pets", pets);
			moveURL = "choice.jsp";
		}
		
		return moveURL;
	}
}
