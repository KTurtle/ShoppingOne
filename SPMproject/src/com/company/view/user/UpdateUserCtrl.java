package com.company.view.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.biz.user.UserVO;
import com.company.biz.user.impl.UserDAO;

public class UpdateUserCtrl extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int usernumber = Integer.parseInt(request.getParameter("number"));
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		//넘어온값을 BoardVO에 다 담아서 한번에 전달
		UserVO vo = new UserVO();
		vo.setNumber(usernumber);
		vo.setPassword(password);
		vo.setUsername(username);
		vo.setTel(tel);
		vo.setEmail(email);
		vo.setAddress(address);
		
		UserDAO dao = new UserDAO();
		dao.updateUser(vo);

		UserVO User = dao.getUser(usernumber);

		request.setAttribute("User", User);

		RequestDispatcher view = request.getRequestDispatcher("joinFormGet.jsp");
		view.forward(request, response);

	}

}
