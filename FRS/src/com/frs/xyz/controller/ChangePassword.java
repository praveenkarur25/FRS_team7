package com.frs.xyz.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.frs.xyz.dao.UserDAO;

@WebServlet("/changepassword")
public class ChangePassword extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String oldpass = request.getParameter("old");
		String password = request.getParameter("confirm");
		System.out.println(password);
		System.out.println(oldpass);
		String status = UserDAO.changepassword(userid, oldpass, password);
		if (status.equals("C")) {
			response.sendRedirect("UserHome.jsp");
		} else if (status.equals("A")) {
			response.sendRedirect("Flights.jsp");
		} else {
			request.setAttribute("status", "Old password is incorrect");
			RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
			rd.forward(request, response);
		}

	}
}
