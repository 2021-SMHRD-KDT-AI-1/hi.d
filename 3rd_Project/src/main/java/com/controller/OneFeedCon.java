package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.commentDAO;
import com.DAO.feedDAO;
import com.DAO.petDAO;
import com.VO.feedVO;
import com.VO.feed_commentVO;
import com.VO.petVO;
import com.command.Command;

public class OneFeedCon implements Command{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		
		int feed_num = Integer.parseInt(request.getParameter("feed_num"));
		feedDAO dao_feed = new feedDAO();
		feedVO feed = dao_feed.get_one_feed(feed_num);
		
		commentDAO dao_comment = new commentDAO();

		ArrayList<String[]> comments = dao_comment.comment_info(feed_num);
		
		HttpSession session = request.getSession();
		session.setAttribute("feed_info", feed);
		session.setAttribute("comment_info", comments);
		
		moveURL = "follow.jsp";
		
		return moveURL;
	}
}
