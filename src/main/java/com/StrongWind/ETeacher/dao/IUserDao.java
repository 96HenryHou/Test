package com.StrongWind.ETeacher.dao;

import java.util.*;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import com.StrongWind.ETeacher.pojo.User;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


public interface IUserDao {
	public User userLoginIn(@Param("username")int username,@Param("password")String password);
	public Integer userRegister(@Param("username")int username,@Param("password")String password);
	public Integer insertMessageById(@Param("userid")int userid,@Param("title")String title,@Param("content")String content);
	public List<JSONObject> showMessageByUserId(@Param("userid")int userid);
}

