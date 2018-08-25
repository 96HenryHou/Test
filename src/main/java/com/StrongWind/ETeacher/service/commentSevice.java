package com.StrongWind.ETeacher.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.StrongWind.ETeacher.dao.ICommentDao;

import net.sf.json.JSONObject;

@Service
@Transactional(propagation = Propagation.REQUIRED,isolation =Isolation.READ_COMMITTED)
public class commentSevice {
	@Resource
	ICommentDao commentDao;
	
	public Integer ThumbsUp(JSONObject obj){
		int flag = 0;
		flag = commentDao.ThumbsUp(3,3,3);
		return flag;
	}
}
