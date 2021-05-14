package com.company.view.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.biz.product.ProductVO;

public class ViewDetailProduct extends HttpServlet{

	
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String url = request.getParameter("productURL");
		
		// 받을 값을 DAO에 전달하기 위새 1개의 변수로 결합
		ProductVO productvo = new ProductVO();
		
		// url 전달
		productvo.setProductURL(url);
		
		request.setAttribute("productvo", productvo);

		RequestDispatcher view = request.getRequestDispatcher("detailPageForm.jsp");
		view.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
	}
	
	
	
	
}
