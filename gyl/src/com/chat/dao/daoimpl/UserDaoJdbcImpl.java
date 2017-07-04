package com.chat.dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.chat.bean.Users;
import com.chat.dao.UserDao;
import com.dao.DaoImpl;

public class UserDaoJdbcImpl implements UserDao {

	public Users login(Users user) throws Exception {
		System.out.println("login:"+user);
		DaoImpl dao=new DaoImpl();
		Connection conn = dao.getConnection();
		String sql = "SELECT * FROM user_info WHERE user_info_name = ? AND user_info_password = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, user.getUsername());
		stmt.setString(2, user.getPassword());
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
			user.setUserId(rs.getString("user_info_id"));
			user.setUsername(rs.getString("user_info_name"));
			user.setPassword(rs.getString("user_info_password"));
		}else {
			String sql1 = "SELECT * FROM company WHERE com_login_name = ? AND com_login_pass = ?";
			stmt=conn.prepareStatement(sql1);
			stmt.setString(1, user.getUsername());
			stmt.setString(2, user.getPassword());
			rs=stmt.executeQuery();
			if(rs.next()){
				user.setUserId(rs.getString("company_id"));
				user.setUsername(rs.getString("com_login_name"));
				user.setPassword(rs.getString("com_login_pass"));
			}
			else{
				user=null;
			}
		}
		dao.close(rs, stmt, conn);
		return user;
	}

}
