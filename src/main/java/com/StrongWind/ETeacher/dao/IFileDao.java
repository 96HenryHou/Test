package com.StrongWind.ETeacher.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface IFileDao {
	public Integer InsertByFileName(@Param("userId")int userId,@Param("list")List<String> fileList);
}
