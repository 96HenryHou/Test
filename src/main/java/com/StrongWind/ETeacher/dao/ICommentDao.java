package com.StrongWind.ETeacher.dao;

import org.apache.ibatis.annotations.Param;

public interface ICommentDao {
	public Integer ThumbsUp(@Param("messageNum")Integer messageNum,@Param("like")Integer like,@Param("unlike")Integer unlike);
}