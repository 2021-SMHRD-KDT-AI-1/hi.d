package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.Command;

@WebServlet("*.do")
public class frontcontroller extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String reqURI = request.getRequestURI();
		String path = request.getContextPath();
		String result = reqURI.substring(path.length() + 1);
		
		Command con = null;
		
		if(result.equals("LoginCon.do")) {
			con = new LoginCon();
		} else if(result.equals("JoinCon.do")) {
			con = new JoinCon();
		} else if(result.equals("PetJoinCon.do")) {
			con = new PetJoinCon();
<<<<<<< HEAD
		} else if(result.equals("searchpageCon.do")) {
			con = new searchpageCon();
=======
		} else if(result.equals("PetUpdateCon.do")) {
			con = new PetUpdateCon();
		} else if(result.equals("FeedUpload.do")) {
			con = new FeedUpload();
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-1/hi.d.git
		}
		String moveURL = con.execute(request, response);
		response.sendRedirect(moveURL);
	}

}
