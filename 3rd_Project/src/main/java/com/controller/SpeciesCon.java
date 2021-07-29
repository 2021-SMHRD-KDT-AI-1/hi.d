package com.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.petDAO;
import com.command.Command;

public class SpeciesCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
			String moveURL = "";
			
			
			String pet_gen = request.getParameter("radio_pet");

			System.out.println(pet_gen);

			speciesVO vo = new speciesVO(species);
			messageDAO dao = new messageDAO();
			int cnt = dao.insertMessage(vo);

			if (cnt > 0) {
				System.out.println("메시지 전송 성공");
			} else {
				System.out.println("메시지 전송 실패");
			}
			moveURL = "main.jsp";

			return moveURL;
		}
			
		
		
		return null;
	}
	

}
