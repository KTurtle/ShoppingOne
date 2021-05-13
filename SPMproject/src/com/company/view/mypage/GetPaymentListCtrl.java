package com.company.view.mypage;

import java.io.IOException;
import java.util.ArrayList;

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
		ArrayList<PaymentVO> paymentList = dao.getPaymentList(num);

		request.setAttribute("paymentList", paymentList);

		RequestDispatcher view = request.getRequestDispatcher("paymentGet.jsp");
		view.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
	}
	
}
