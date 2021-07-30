package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.feedDAO;
import com.VO.feedVO;
import com.command.Command;

public class searchpageCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		String search = request.getParameter("search");
		System.out.println("con¡¢º”");
		
		feedDAO dao = new feedDAO();
		ArrayList<feedVO> feed_arr =  dao.search_feed(search);
		
		HttpSession session = request.getSession();
		session.setAttribute("search_feed", feed_arr);
		moveURL = "likepage.jsp";
		
		return moveURL;
	}

}
