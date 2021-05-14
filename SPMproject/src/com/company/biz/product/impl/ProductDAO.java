package com.company.biz.product.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.company.biz.common.JdbcConnection;
import com.company.biz.product.ProductVO;

public class ProductDAO {
	   private Connection conn = null;
	   private PreparedStatement stmt = null;
	   private ResultSet rs = null;
	   
	   // 전체상품 조회 -- 관리자가 볼 수 있는 페이지
	   public ArrayList<ProductVO> getProductVO() {

	      ArrayList<ProductVO> ProductList = new ArrayList<ProductVO>();

	      try {
	         //static 메서드라 클래스 이름으로 접근
	         conn = JdbcConnection.getConnection();
	         
	         String sql = "select * from spproduct";
	         stmt = conn.prepareStatement(sql);

	         rs = stmt.executeQuery();

	         while (rs.next()) {
	        	 ProductVO productvo = new ProductVO();

	        	productvo.setProductId(rs.getString("productId"));
	        	productvo.setProductType(rs.getString("productType"));
	        	productvo.setProductName(rs.getString("productName"));
	        	productvo.setExplanation(rs.getString("explanation"));
	        	productvo.setPrice(rs.getInt("price"));
	        	productvo.setStock(rs.getInt("stock"));
	        	productvo.setProductURL(rs.getString("productURL"));
	        	

	        	ProductList.add(productvo);
	         }

	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         JdbcConnection.close(rs, stmt, conn);
	      }
	      // 결과물을 담은 객체를 리턴
	      return ProductList;
	   }

	   // 상품 1개 조회 - url로 받기
	   public ProductVO getProduct(String url) {

		   ProductVO product = null;

	      // 호출하는 곳에서 필요한 값을 전달. 따라서 매개변수로 처리한다.
	      // int num = Integer.parseInt(request.getParameter("num"));

	      try {
	         conn = JdbcConnection.getConnection();
	         
	         String sql = "select * from spproduct where producturl = ?";
	         
	         stmt = conn.prepareStatement(sql);

	         stmt.setString(1, url);

	         rs = stmt.executeQuery();

	         if (rs.next()) {
	        	 product = new ProductVO();

	        	 product.setProductId(rs.getString("productId"));
	        	 product.setProductType(rs.getString("productType"));
	        	 product.setProductName(rs.getString("productName"));
	        	 product.setExplanation(rs.getString("explanation"));
	        	 product.setPrice(rs.getInt("price"));
	        	 product.setStock(rs.getInt("stock"));
	        	 product.setProductURL(rs.getString("productURL"));


	            
	         }

	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         JdbcConnection.close(rs, stmt, conn);
	         }
	      
	      // 쿼리 실행결과 1개를 호출한 곳으로 전달.
	      return product;
	   }

	   // 상품 입력
	   public void addProduct(ProductVO productvo) {

		   System.out.println(productvo);


	      try {
	         conn = JdbcConnection.getConnection();
	         
	         String sql = "insert into spproduct (productid, producttype, productname, explanation, price, stock, producturl) "
	               + "values(?, ?, ?, ?, ?, ?, ?)";

	         stmt = conn.prepareStatement(sql);

	         stmt.setString(1, productvo.getProductId());
	         stmt.setString(2, productvo.getProductType());
	         stmt.setString(3, productvo.getProductName());
	         stmt.setString(4, productvo.getExplanation());
	         stmt.setInt(5, productvo.getPrice());
	         stmt.setInt(6, productvo.getStock());
	         stmt.setString(7, productvo.getProductURL());

	         conn.commit();
	         

	      } catch (Exception e) {
	         try {
	            conn.rollback();
	         } catch (SQLException e1) {
	            e1.printStackTrace();
	         }
	         e.printStackTrace();
	      } finally {
	         JdbcConnection.close(stmt, conn);
	      }
	   }

	   // 게시물 삭제
	   public void deleteProduct(ProductVO productvo) {
 
		      try {
			       conn = JdbcConnection.getConnection();
			         
			       String sql = "delete from spproduct where productid "
			               + "values(?, ?, ?, ?, ?, ?, ?)";
			       stmt = conn.prepareStatement(sql);
			       stmt.setString(1, productvo.getProductId());
			       
			       conn.commit();
		         
			      } catch (Exception e) {
			         try {
			            conn.rollback();
			         } catch (SQLException e1) {
			            e1.printStackTrace();
			         }
			         e.printStackTrace();
			      } finally {
			         JdbcConnection.close(stmt, conn);
			      }
		      }

	   
	   //게시물 수정
	   public void updateProduct(ProductVO productvo) {
	      
	      try {
	         conn = JdbcConnection.getConnection();	        
	         //productid, producttype, productname, explanation, price, stock, producturl
	         String sql = "update spproduct set producttype = ?, productname = ?, explanation = ?, "
	         			+  "price = ?, stock = ?, producturl = ? where productid = ?";
	         stmt = conn.prepareStatement(sql);

	         stmt.setString(1, productvo.getProductId());
	         stmt.setString(2, productvo.getProductType());
	         stmt.setString(3, productvo.getProductName());
	         stmt.setString(4, productvo.getExplanation());
	         stmt.setInt(5, productvo.getPrice());
	         stmt.setInt(6, productvo.getStock());
	         stmt.setString(7, productvo.getProductURL());
	         	      
	         
	      }catch(Exception e){
	         try {
	            conn.rollback();
	         } catch (SQLException e1) {
	            e1.printStackTrace();
	         }
	         e.printStackTrace();
	      }finally {
	         JdbcConnection.close(stmt, conn);
	      }
	   }
	   
	   
	   
	}