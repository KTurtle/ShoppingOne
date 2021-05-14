package com.company.view.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.biz.product.ProductVO;
import com.company.biz.product.impl.ProductDAO;

public class ViewDetailProductBefore extends HttpServlet{

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		String url = request.getParameter("productURL");
		
		//DAO에 받은 번호를 전달하고 그 결과값을 받는다.
		ProductDAO dao = new ProductDAO();
		ProductVO productvo = dao.getProduct(url);
		
		request.setAttribute("productvo", productvo);

		RequestDispatcher view = request.getRequestDispatcher("detailPageForm.jsp");
		view.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
}
