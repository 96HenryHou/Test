package com.StrongWind.ETeacher.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.StrongWind.ETeacher.dao.IUserDao;
import com.StrongWind.ETeacher.pojo.Message;
import com.StrongWind.ETeacher.pojo.User;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@Service
@Transactional(propagation = Propagation.REQUIRED,isolation =Isolation.READ_COMMITTED)
public class UserService {

	@Resource
	IUserDao dao;

	private Message message;
	
	private User user = null;

	public Integer userLoginIn(JSONObject login_user,HttpSession session) {
	     Integer flag = 0;
		int login_userid = login_user.getInt("username");
		 String login_password = login_user.getString("password");
		 user = dao.userLoginIn(login_userid, login_password);		 
		 if(user != null){
			 session.setAttribute("loginUser", user);
			 System.out.println("!!!!!!"+user+"!!!!!!!!");
		    flag = 1;
		    System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!");
		 }
		return flag;
	}
	
	public Integer userRegister(JSONObject user,HttpSession session) {
		Integer flag = 0; 
		int register_userid = user.getInt("username");
		 String register_password = user.getString("password");
		 flag = dao.userRegister(register_userid,register_password);
		 if(flag != null &&flag != 0){
			 session.setAttribute("loginUser", user);
			 System.out.println(user);
		 }	 
		 return flag;
	}
	
	
	public Integer insertMessageById(User user,String title,String content) {
		int i = dao.insertMessageById(2014250714, title, content);
		 return i;
	}
	
	public JSONArray showMessageById() {
		List list ;
		JSONArray array = new JSONArray();
		list = dao.showMessageByUserId(2014250714);
		array.addAll(list);
		System.out.println(list.iterator().next());
		return array;
	}
	
	public void FileUpload() {
	//    try {
//	//        List<FileItem> list = up.parseRequest(req);
//	        //如果就一个文件，
//	//        FileItem file = list.get(0);
//	        //获取文件名：
//	        String fileName = file.getName();
//	        //获取文件的类型：
//	        String fileType = file.getContentType();
//	        //获取文件的字节码：
//	        InputStream in = file.getInputStream();
//	        //文件大小
//	        int size = file.getInputStream().available();
//	        //声明输出字节流
//	//        OutputStream out = new FileOutputStream(path+"/"+fileName);
//	        //文件copy
////	        byte[] b = new byte[1024];
////	        int len = 0;
////	        while((len=in.read(b))!=-1){
////	            out.write(b, 0, len);
////	        }
////	        out.flush(); 
////	        out.close();
////	        
//	        //删除上传生成的临时文件
//	        file.delete();
//	        
//	        //显示数据
//	        resp.setContentType("text/html;charset=UTF-8");
//	        PrintWriter pw = resp.getWriter();
//	        pw.println("文件名："+fileName);
//	        pw.println("文件类型："+fileType);
//	        pw.println("<br/>文件大小（byte）："+size);
//	    } catch (FileUploadException e) {
//	        e.printStackTrace();
//	    } catch (IOException e) {
//	        e.printStackTrace();
//	    }
   }
}