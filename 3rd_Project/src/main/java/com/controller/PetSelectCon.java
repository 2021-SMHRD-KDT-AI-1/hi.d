package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.feedDAO;
import com.DAO.memberDAO;
import com.DAO.petDAO;
import com.VO.feedVO;
import com.VO.feed_upload_petVO;
import com.VO.memberVO;
import com.VO.petVO;
import com.VO.speciesVO;
import com.command.Command;

public class PetSelectCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		HttpSession session = request.getSession();
		int pet_num = Integer.parseInt(request.getParameter("pet_num"));
		petDAO dao = new petDAO();
		petVO pet_vo = dao.pet_info(pet_num);
		session.setAttribute("pet_vo", pet_vo);
		session.setAttribute("cord", dao.cat_or_dog(pet_vo.getSpecies()));
				
		feedDAO feeddao = new feedDAO();
		ArrayList<feed_upload_petVO> feeds = feeddao.following_feed(pet_num);
		
		session.setAttribute("feedsinfo", feeds);
		
		if (pet_vo != null) {
			moveURL = "index.jsp";
		} else {
			moveURL = "choice.jsp";
		}
		
		return moveURL;
		
	}

}
