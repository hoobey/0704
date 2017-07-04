package com.chat.dao;

import com.chat.bean.Users;

public interface UserDao {
	
	public Users login(Users user) throws Exception;

}
