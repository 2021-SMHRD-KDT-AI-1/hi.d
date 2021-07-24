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

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사용자가 로그인에 성공하면 main.jsp로 이동하시오.
		
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		//2_1. 사용자가 입력한 id값을 검색하시오.
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
					
					HttpSession session = request.getSession();
					
					session.setAttribute("email", email);
					
					response.sendRedirect("main.jsp");
					
					
				}
				
			}	
			
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
