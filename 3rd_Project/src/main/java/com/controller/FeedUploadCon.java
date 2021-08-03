package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.feedDAO;
import com.DAO.memberDAO;
import com.DAO.petDAO;
import com.VO.feedVO;
import com.VO.memberVO;
import com.VO.petVO;
import com.VO.speciesVO;
import com.command.Command;

public class FeedUploadCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		HttpSession session = request.getSession();
		int getPet_num = ((petVO) session.getAttribute("profile")).getPet_num();
		System.out.println(getPet_num);
		
		
		
		String img_addr = "C:\\Users\\CGI\\Desktop\\" + request.getParameter("photo");	
		String f_lock = request.getParameter("chk_open");
		String feed_content = request.getParameter("contents");	
		
		feedDAO dao = new feedDAO();
		feedVO vo_feed = new feedVO(getPet_num, img_addr, feed_content, f_lock );
		int cnt = dao.feed_upload(vo_feed);
		
        
		if (cnt > 0) {
			session.setAttribute("vo_feed", vo_feed);
			moveURL = "hover_video_test.jsp";
		}else {
			moveURL = "choice.jsp";
		}
		
		return moveURL;
		
		
		
//		String moveURL = "";
//		HttpSession session = request.getSession();
//		int getPet_num = ((Integer) session.getAttribute("profile")).getPet_num();
//		
//		
//		String img_addr = request.getParameter("photo");	
//		String f_lock = request.getParameter("chk_open");
//		String feed_content = request.getParameter("contents");	
//		
//		
//		feedDAO dao = new feedDAO();
//		feedVO vo_feed = new feedVO(getPet_num, img_addr, f_lock, feed_content);
//		int cnt = dao.feed_upload(vo_feed);
//		
//		
//		if (cnt > 0) {
//			moveURL = "index.jsp";
//		}
//		
//		return moveURL;
	}
	
	

}
