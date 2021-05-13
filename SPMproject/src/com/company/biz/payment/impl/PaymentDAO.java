package com.company.biz.payment.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.company.biz.common.JdbcConnection;
import com.company.biz.payment.PaymentVO;

public class PaymentDAO {

	private Connection conn = null;
	   private PreparedStatement stmt = null;
	   private ResultSet rs = null;
	   
	   
	   // 결제 내역 추가 
	   
	   
	   
	   // 결제 내역 1명분 조회
	   public PaymentVO getPayment(int usernumber) {
		   
		   PaymentVO payment = null;
		   
		   try {
		         conn = JdbcConnection.getConnection();
		         
		         String sql = "select * from sppayment where usernumber = ?";
		         // 상품id대신 상품명name 을 join으로 불러와야하는데
		         // 일단 상품id로 구현함.
		         
		         stmt = conn.prepareStatement(sql);

		         stmt.setInt(1, usernumber);

		         rs = stmt.executeQuery();

		         if (rs.next()) {
		            payment = new PaymentVO();

		            payment.setPaymentid(rs.getInt("paymentid"));
		            payment.setUsernumber(rs.getInt("usernumber"));
		            payment.setProductid(rs.getString("productid"));
		            payment.setCnt(rs.getInt("cnt"));
		            payment.setAddress(rs.getString("address"));
		            payment.setTel(rs.getString("tel"));
		            payment.setCCnumber(rs.getString("CCnumber"));
		            //payment.setCCpassword(rs.getInt("CCpassword"));

		         }

		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         JdbcConnection.close(rs, stmt, conn);
		         }

		      return payment;
		   
	   }
	   
	   
	
}
