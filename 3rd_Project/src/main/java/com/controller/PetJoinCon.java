package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PetJoinCon")
public class PetJoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String pet_profile = request.getParameter("pet_profile");
		String pet_nick = request.getParameter("pet_nick");
		String radio_gender = request.getParameter("radio_gender");
		String radio_pet = request.getParameter("radio_pet");
		String species = request.getParameter("species");
		String content = request.getParameter("content");
		String email = request.getParameter("email");
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";
			Connection conn = DriverManager.getConnection(url, dbid, dbpw);
			
			
			String sql = "insert into petinfo values(pet_num_seq.nextval,?,?,?,?,?,?)";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, pet_nick);
			psmt.setString(2, pet_profile);
			psmt.setString(3, content);
			psmt.setString(4, radio_gender);
			psmt.setString(5, species);
			psmt.setString(6, email);
			
			int cnt = psmt.executeUpdate();
			
			if(cnt>0) {
				response.sendRedirect("main.jsp");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	
	
	
	}

}
