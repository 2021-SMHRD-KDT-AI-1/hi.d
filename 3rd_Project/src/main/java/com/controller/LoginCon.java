package com.controller;

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

import com.VO.memberVO;
import com.VO.petVO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
	
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";
			Connection conn = DriverManager.getConnection(url, dbid, dbpw);
			
			String sql = "select * from memberinfo where email = ?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			 
			
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()){
				
				String getpw = rs.getString(2);
				
				if(pw.equals(getpw)) {
					
					memberVO vo = new memberVO( email, pw);
					
					HttpSession session = request.getSession();
					
					session.setAttribute("vo", vo);
					
					response.sendRedirect("choice.jsp");
					
					
				}
				
			}	
			
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	
	
	
	}

}
