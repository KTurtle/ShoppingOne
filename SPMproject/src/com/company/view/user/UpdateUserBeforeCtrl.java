package com.company.view.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.biz.user.UserVO;
import com.company.biz.user.impl.UserDAO;

public class UpdateUserBeforeCtrl extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int num = Integer.parseInt(request.getParameter("num"));

		UserDAO dao = new UserDAO();
		UserVO User = dao.getUser(num);

		request.setAttribute("User", User);

		RequestDispatcher view = request.getRequestDispatcher("joinFormUpdate.jsp");
		view.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
