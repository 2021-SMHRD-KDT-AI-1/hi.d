package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.DAO.commentDAO;
import com.DAO.petDAO;
import com.VO.feedVO;
import com.VO.feed_commentVO;
import com.VO.petVO;

@WebServlet("/replyAjax")
public class replyAjax extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=euc-kr");
		
		petVO vo = (petVO)session.getAttribute("pet_vo");
		feedVO feed = (feedVO)session.getAttribute("feed_info");
		
		int pet_num = vo.getPet_num();
		int feed_num = feed.getFeed_num();
		String inputReple = request.getParameter("inputReple");
		String likepet = "";
		
		feed_commentVO feed_comment = new feed_commentVO(pet_num, feed_num, inputReple, likepet);
		petDAO pet_dao = new petDAO();
		commentDAO dao = new commentDAO();
		
		int cnt = dao.comment_upload(feed_comment);
		
		ArrayList<feed_commentVO> comments = dao.getfeedcomment(feed_num);
		
		JSONObject tempJson = new JSONObject();
		
		
		int j = 0;
		for(int i = 0; i < comments.size(); i++) {
			String pet_name = pet_dao.pet_name(comments.get(i).getPet_num());
			tempJson.put(j++, pet_name);
			tempJson.put(j++, comments.get(i).getComment_content());
		}
		
		PrintWriter out = response.getWriter();
		out.print(tempJson);
	}

}
