package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.DAO.petDAO;

@WebServlet("/SpeciesAjax")
public class SpeciesAjax extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pet_cord = request.getParameter("cord");
		petDAO dao = new petDAO();
		ArrayList<String> speciess = dao.species_select(pet_cord);

		JSONObject tempJson = new JSONObject();
		
		response.setContentType("text/html;charset=euc-kr");

		PrintWriter out = response.getWriter();
		
		for(int i = 0; i < speciess.size(); i++) {
			tempJson.put(i, speciess.get(i));
			
		}
		out.print(tempJson);
	}

}
