package com.testing.image;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewImage extends HttpServlet{

	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String url = request.getParameter("image1");
		System.out.println(url);
		
		
		// 받을 값을 DAO에 전달하기 위새 1개의 변수로 결합
		ImageVO vo = new ImageVO();
		vo.setImageURL(url);

		System.out.println(url);
		response.sendRedirect("NewFile.jsp");
		
	}
	
}
