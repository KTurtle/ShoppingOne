package com.company.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.biz.board.BoardVO;
import com.company.biz.common.JdbcConnection;
import com.company.biz.user.UserVO;

public class UserDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	// login
	public UserVO login(UserVO vo) {
		UserVO user = null;

		try {
			conn = JdbcConnection.getConnection();

			String sql = "select * from spuser where userid = ? and password = ?";
			stmt = conn.prepareStatement(sql);

			stmt.setString(1, vo.getUserid());
			stmt.setString(2, vo.getPassword());

			rs = stmt.executeQuery();

			if (rs.next()) {
				user = new UserVO();
				user.setUsername(rs.getString("username"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcConnection.close(rs, stmt, conn);
		}

		return user;
	}

	// logout
	public void logout() {

	}

	// insert 신규 회원 가입
	public int addUser(UserVO vo) {

		int cnt = 0;

		try {
			conn = JdbcConnection.getConnection();

			String sql = "insert into spuser(usernumber, usertype, userid, password, username, tel, email, address) values((select count(usernumber) from spuser)+1,'일반회원',?,?,?,?,?,?)";

			stmt = conn.prepareStatement(sql);

			stmt.setString(1, vo.getUserid());
			stmt.setString(2, vo.getPassword());
			stmt.setString(3, vo.getUsername());
			stmt.setString(4, vo.getTel());
			stmt.setString(5, vo.getEmail());
			stmt.setString(6, vo.getAddress());

			cnt = stmt.executeUpdate();
			if (cnt != 0) {
				conn.commit();
			}

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
		// 마지막에 실행된 개수 전달
		return cnt;

	}
	
	
	// 회원 1명 조회
	   public UserVO getUser(int num) {

	      UserVO User = null;

	      try {
	         conn = JdbcConnection.getConnection();
	         
	         String sql = "select * from spuser where usernumber = ?";
	         stmt = conn.prepareStatement(sql);

	         stmt.setInt(1, num);

	         rs = stmt.executeQuery();

	         if (rs.next()) {
	            User = new UserVO();

	            User.setNumber(rs.getInt("number"));
	            User.setUsertype(rs.getString("usertype"));
	            User.setUserid(rs.getString("userid"));
	            User.setPassword(rs.getString("password"));
	            User.setUsername(rs.getString("tel"));
	            User.setEmail(rs.getString("email"));
	            User.setAddress(rs.getString("address"));
	            
	         }

	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         JdbcConnection.close(rs, stmt, conn);
	         }

	      return User;
	   }
	
	

	// 게시물 수정
	public void updateUser(UserVO vo) {

		try {
			conn = JdbcConnection.getConnection();

			String sql = "update spuser set password = ?, username = ?, tel = ?, email = ?, address = ? where userid = ?";

			stmt = conn.prepareStatement(sql);

			stmt.setString(1, vo.getPassword());
			stmt.setString(2, vo.getUsername());
			stmt.setString(3, vo.getTel());
			stmt.setString(4, vo.getEmail());
			stmt.setString(5, vo.getAddress());
			stmt.setString(6, vo.getUserid());

			int cnt = stmt.executeUpdate();

			if (cnt != 0) {
				conn.commit();
			}

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

}
