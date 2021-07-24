package com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/petCon")

public class PetCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";
			Connection conn = DriverManager.getConnection(url, dbid, dbpw);
			
			String sql = "select * from petinfo where email = ?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(7, email);
			
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()){
				
				String pet_num = rs.getString(1);
				String pet_nick = rs.getString(2);
				String getemail = rs.getString(7);
				
				if(email.equals(getemail)) {
					
					HttpSession session = request.getSession();
					
					session.setAttribute("email", email);
					session.setAttribute("pet_num", pet_num);
					session.setAttribute("pet_nick", pet_nick);
					
					response.sendRedirect("main.jsp");
					
					
				}
				
			}	
			
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
