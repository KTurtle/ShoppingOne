package com.company.view.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.biz.payment.PaymentVO;
import com.company.biz.payment.impl.PaymentDAO;

public class GetPaymentListCtrl extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int num = Integer.parseInt(request.getParameter("num"));

		PaymentDAO dao = new PaymentDAO();
		PaymentVO payment = dao.getPayment(num);

		request.setAttribute("Payment", payment);

		System.out.println(payment.getProductid());
		RequestDispatcher view = request.getRequestDispatcher("paymentGet.jsp");
		view.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
	}
	
}
