package com.company.biz.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewDetailProduct extends HttpServlet{

	
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String url = request.getParameter("productURL");
		System.out.println(url);
		
		
		// 받을 값을 DAO에 전달하기 위새 1개의 변수로 결합
		ProductVO productvo = new ProductVO();
		productvo.setProductURL(url);
		
		request.setAttribute("productvo", productvo);

		System.out.println(url);
		System.out.println(productvo.getProductURL());

		
		RequestDispatcher view = request.getRequestDispatcher("detailPageForm.jsp");
		view.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
	}
	
	
	
	
}
