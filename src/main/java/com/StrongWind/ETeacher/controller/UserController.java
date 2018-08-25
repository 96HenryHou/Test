package com.StrongWind.ETeacher.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.StrongWind.ETeacher.pojo.User;
import com.StrongWind.ETeacher.service.FileService;
import com.StrongWind.ETeacher.service.UserService;
import com.StrongWind.ETeacher.service.commentSevice;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class UserController {
	@Resource
	private UserService service;
	
	@Resource
	private FileService fileService;
	
	@Resource
	private commentSevice comment;

	@Autowired
	private User user;
	@RequestMapping(value="test")
	public ModelAndView testViewResolove(String str){
		System.out.println("aaaaaaaaaaaaa");
		return new ModelAndView("index");
	}
	

	
	@ResponseBody
	@RequestMapping(value="**/login")
	public Integer toLogin(@RequestParam(value="user")String jsonObject, HttpServletRequest request){
		Integer flag = 0;
		System.out.println(user.getPassword()+"!!! "+user.getUsername());
		JSONObject userLogin = JSONObject.fromObject(jsonObject); 
		flag = service.userLoginIn(userLogin,request.getSession());	
		return flag;
	}
	
	@ResponseBody
	@RequestMapping(value="**/register")
	public  Integer toRegister(@RequestParam(value="user")String jsonObject, HttpServletRequest request){
		Integer flag= 0;
		JSONObject userRegister = JSONObject.fromObject(jsonObject); 
		flag = service.userRegister(userRegister,request.getSession());
		return flag;
	}
	
	@ResponseBody
	@RequestMapping(value="**/userMessage")
	public  Integer WriterMessage(@RequestParam(value="userMessage")String jsonObject, HttpServletRequest request){
		Integer flag = 0;
		JSONObject JsonMessage = JSONObject.fromObject(jsonObject);
		  user = (User)request.getSession().getAttribute("loginUser");
		 flag = service.insertMessageById(user,JsonMessage.getString("title"),JsonMessage.getString("content"));
		if(user !=null){
         flag = service.insertMessageById(user,JsonMessage.getString("title"),JsonMessage.getString("content"));
		return flag;
	}
		return flag;
 }
	@ResponseBody
	@RequestMapping(value="**/showMessage")
	public  JSONArray showMessageByuserId(){
		JSONArray message = new JSONArray();
		message = service.showMessageById();
		return message;
 }
	
	@RequestMapping(value="**/fileUpload")
	public  ModelAndView FileUpload(@RequestParam(value="file")MultipartFile[] uploadFile,HttpServletRequest request,HttpServletResponse response) throws Exception{
		 HttpSession  session = request.getSession();
		 fileService.UploadFile(uploadFile, session);
	        return  new ModelAndView("success.jsp");
 }
	
	@ResponseBody
	@RequestMapping(value="**/thumbs")
	public  Integer toThumbsUp(@RequestParam(value="user")String jsonObject, HttpServletRequest request){
		Integer flag= 0;
		System.out.println("!!!!!!!");
		JSONObject userThumbs = JSONObject.fromObject(jsonObject); 
		flag = comment.ThumbsUp(userThumbs);
		
		return flag;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
