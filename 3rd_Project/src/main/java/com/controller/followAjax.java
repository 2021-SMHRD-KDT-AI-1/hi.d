package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.followDAO;
import com.VO.petVO;
import com.VO.pet_followVO;

@WebServlet("/followAjax")
public class followAjax extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=euc-kr");
		
		petVO pet = (petVO)session.getAttribute("pet_vo");
		int owner_num = ((pet_followVO)session.getAttribute("profile")).getPet_num();
		
		String followinfo = request.getParameter("followinfo");
		followDAO follow_dao = new followDAO();
		
		PrintWriter out = response.getWriter();
		
		if(followinfo.equals("ÆÈ·Î¿ì")) {
			follow_dao.follow(pet.getPet_num(), owner_num);
			out.print("ÆÈ·Î¿ì Ãë¼Ò");
		} else {
			follow_dao.unfollow(pet.getPet_num(), owner_num);
			out.print("ÆÈ·Î¿ì");
		}
	}

}
