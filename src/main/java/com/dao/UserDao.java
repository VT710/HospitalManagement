  package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDao {

	private Connection conn;

	public UserDao(Connection conn) {
		this.conn = conn;

	}

	public boolean userRegister(User u) {
		boolean f = false;
		try {
			String sql = "insert into user_dtls(full_name,email,password) values(?,?,?)";

			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getFullName());
			pstmt.setString(2, u.getEmail());
			pstmt.setString(3, u.getPassword());
			int i = pstmt.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public User loginUser(String em, String pwd) {
		User u = null;

		try {
			String sql = "select * from user_dtls where email=? and password=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, em);
			pstmt.setString(2, pwd);

			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				u=new User();
				u.setId(rs.getInt(1));
				u.setFullName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return u;
	}
	
	public boolean checkOldPassword(int userid, String oldPassword) {
		boolean f =false;
		try {
			String sql="select * from user_dtls where id=? and password=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userid);
			pstmt.setString(2, oldPassword);
			ResultSet rs= pstmt.executeQuery();
			while(rs.next())
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public boolean changePassword(int userid, String newPassword) {
		boolean f =false;
		try {
			String sql="update user_dtls set password=? where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newPassword);
			pstmt.setInt(2, userid);
			int i= pstmt.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	

}
