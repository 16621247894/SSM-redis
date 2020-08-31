package com.zwq.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zwq.entity.Users;
import com.zwq.service.RedisCache;
import com.zwq.service.UserService;
import com.zwq.utils.FastjsonConvert;

@Controller
public class TestCon {

	@Autowired
	private UserService dao;
	

	@Autowired
	private RedisCache cache;

	
	@RequestMapping("getInfo")
	@ResponseBody
	public List<Users> getInfo() {
		long start = System.currentTimeMillis();
		List<Users> list=new ArrayList<Users>();
		try {
			
			
			String redisList=(String) cache.get("userList");
			if(StringUtils.isEmpty(redisList)) {
				list = dao.showAll();
				cache.set("userList", FastjsonConvert.listToJson(list));
				
			}else {
				list=FastjsonConvert.jsonToList(redisList, Users.class);
				System.out.println("走缓存");
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		long end = System.currentTimeMillis();
		System.out.println("耗时:"+(end-start));
		return list;

	}
}
