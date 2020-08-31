package com.zwq.idao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.zwq.entity.Users;

public interface IUserDao {

	
	public List<Users> showAll();
	
	public Users findById(Users vo);
	
	
	public int addUser(Users vo);
	
}
