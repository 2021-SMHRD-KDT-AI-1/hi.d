package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.feedDAO;
import com.DAO.memberDAO;
import com.DAO.petDAO;
import com.VO.feedVO;
import com.VO.petVO;
import com.VO.speciesVO;
import com.command.Command;

public class FeedUploadCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		HttpSession session = request.getSession();
		int getPet_num = (Integer) session.getAttribute("pet_num");
		
		
		String img_addr = request.getParameter("photo");	
		String f_lock = request.getParameter("chk_open");
		String feed_content = request.getParameter("contents");	
		
		
		feedDAO dao = new feedDAO();
		feedVO vo = new feedVO(getPet_num, img_addr, f_lock, feed_content);
		int cnt = dao.feed_upload(vo);
		
		
		if (cnt > 0) {
			moveURL = "index.jsp";
		}
		
		return moveURL;
	}

}
