package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.petDAO;
import com.command.Command;

public class SpeciesCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String moveURL = "";

		String pet_cord = request.getParameter("radio_pet");

		petDAO dao = new petDAO();
		ArrayList<String> petlist = dao.species_select(pet_cord);

		
		//
		// 코드 추가
		//
		
		
		
		moveURL = "main.jsp";

		return moveURL;
	}

}
