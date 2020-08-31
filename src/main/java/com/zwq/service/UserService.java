package com.zwq.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zwq.entity.Users;
import com.zwq.idao.IUserDao;

@Service
public class UserService implements IUserDao{

	@Resource
	private IUserDao dao;
	@Override
	public List<Users> showAll() {
		// TODO Auto-generated method stub
		return dao.showAll();
	}

	@Override
	public Users findById(Users vo) {
		// TODO Auto-generated method stub
		return dao.findById(vo);
	}

	@Override
	public int addUser(Users vo) {
		// TODO Auto-generated method stub
		return dao.addUser(vo);
	}

}
