package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.petDAO;
import com.VO.petVO;
import com.command.Command;

public class PetUpdateCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String moveURL = "";
		
		HttpSession session = request.getSession();
		petVO vo = (petVO) session.getAttribute("vo");

		String pet_profile = request.getParameter("pet_profile");
		String pet_nick = request.getParameter("petnick");
		String pet_introduce = request.getParameter("introtext");

		petDAO dao = new petDAO();
		int cnt = dao.update_pet(pet_nick, pet_profile, pet_introduce);

		if (cnt > 0) {
			// 수정된 최신정보로 다시한번 vo를 만들어줘야한다
			petVO vo_update = new petVO(pet_nick, pet_profile, pet_introduce);
			session.setAttribute("vo_update", vo_update);
			moveURL = "profile3.jsp";
		}
		
		
		return moveURL;
	}

}
