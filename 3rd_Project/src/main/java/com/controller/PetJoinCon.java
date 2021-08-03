package com.controller;

import java.io.File;

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
		
		String pet_profile = "C:\\Users\\CGI\\Desktop\\" + request.getParameter("photo");	
		String pet_nick = request.getParameter("pet_nick");
		String pet_gen = request.getParameter("radio_gender");
		String pet_introduce = request.getParameter("content");	
		String species_list = request.getParameter("species_list");
		
		petVO vo_pet = new petVO(pet_nick, pet_profile ,pet_introduce, pet_gen, species_list, email);
		petDAO dao = new petDAO();
		int cnt = dao.PetJoin(vo_pet);
		
		if (cnt > 0) {
			petVO vo_new  = new petVO(pet_nick, pet_profile , pet_introduce, pet_gen,  species_list, email);
			session.setAttribute("vo_pet", vo_new);
			moveURL = "choice.jsp";
		}
		
		return moveURL;
	}
}
