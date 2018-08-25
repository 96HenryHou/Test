package com.StrongWind.ETeacher.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.StrongWind.ETeacher.dao.IFileDao;
import com.StrongWind.ETeacher.dao.IUserDao;
import com.StrongWind.ETeacher.pojo.User;

import net.sf.json.JSONObject;

@Service
@Transactional(propagation = Propagation.REQUIRED,isolation =Isolation.READ_COMMITTED)
public class FileService {
	@Resource
	private IFileDao dao;
	private final JSONObject obj = new JSONObject();
	private static final int maxSize = 1024*1024;
                                                               
    // 缓存文件头信息-文件头信息  
    public static final HashMap<String, String> mFileTypes = new HashMap<String, String>();  
    static {  
        // images  
        mFileTypes.put("FFD8FF", "jpg");  
        mFileTypes.put("89504E", "png");  
        mFileTypes.put("474946", "gif");  
        mFileTypes.put("49492A", "tif");  
        //  
        mFileTypes.put("7B5C72", "rtf"); // 日记本  
        mFileTypes.put("3C3F78", "xml");  
        mFileTypes.put("68746D", "html");  
        mFileTypes.put("D0CF11", "doc");  
        mFileTypes.put("D0CF11", "xls");//excel2003版本文件  
        mFileTypes.put("537461", "mdb");  
        mFileTypes.put("252150", "ps");  
        mFileTypes.put("255044", "pdf");  
        mFileTypes.put("504B03", "docx or xlsx");  
        mFileTypes.put("526172", "rar");  
        mFileTypes.put("4D5468", "mid");  
        mFileTypes.put("1F8B08", "gz");  
    }  
    
	private String getTime(){
		String time;
		Date nowTime = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("yyyy,MM,dd HH,mm,ss");
		time  = ft.format(nowTime);
		return time;
	}
	
	private String getFileType(InputStream is) throws IOException{
        String value = null;  
        try {  
            byte[] b = new byte[3];  
            /* 
             * int read() 从此输入流中读取一个数据字节。int read(byte[] b) 从此输入流中将最多 b.length 
             * 个字节的数据读入一个 byte 数组中。 int read(byte[] b, int off, int len) 
             * 从此输入流中将最多 len 个字节的数据读入一个 byte 数组中。 
             */  
            is.read(b, 0, b.length);  
            value = bytesToHexString(b);  
        } catch (Exception e) {  
        } finally {  
            if (null != is) {  
                try {  
                    is.close();  
                } catch (IOException e) {  
                }  
            }  
        }  
        return value;
	}
	
	private  String bytesToHexString(byte[] src) throws UnsupportedEncodingException {  
        StringBuilder builder = new StringBuilder();  
        if (src == null || src.length <= 0) {  
            return null;  
        }  
        String hv;  
        for (int i = 0; i < src.length; i++) {  
            // 以十六进制（基数 16）无符号整数形式返回一个整数参数的字符串表示形式，并转换为大写  
            hv = Integer.toHexString(src[i] & 0xFF).toUpperCase(); 
            if (hv.length() < 2) {  
                builder.append(0);  
            }  
            builder.append(hv);  
        }  
        //System.out.println(builder.toString());  
        return builder.toString();  
    }  
	
	private boolean judgeFileType(MultipartFile file) throws IOException{          //判断文件是否符合上传要求
		boolean flag = false;
		String fileType ="";
		String filename = file.getOriginalFilename();
		 fileType = getFileType(file.getInputStream());
		 if(mFileTypes.get(fileType) != null){
			 if(file.getSize()<maxSize){
				 flag =true;
			 }else{
				 flag = false;
			 }
		 }else{
			 if(filename.endsWith(".txt")){
	//			 System.out.println("以.txt结尾的文件");
				 if(file.getSize()<maxSize){
					 flag = true;
				 }else{
					 flag = false;
				 }
			 }else{
				 flag = false;
			 }
		 }	 
		 return flag;
	}
	
	public JSONObject UploadFile(MultipartFile[] uploadFile,HttpSession session) throws IOException{
		final List<String> fileList = new ArrayList<String>();
		final ArrayList<Integer> errorList = new ArrayList<Integer>();
		final User user = (User) session.getAttribute("loginUser");
		final int userId = 2014250714;
		final String uploadUrl = "/yjdata/www/www/ETeacher/upload/";
		System.out.println(uploadUrl+"存储地址");
		boolean flag = false;
		Integer rightNumber = 0;
		String time = "";
		File dir = new File(uploadUrl);
		if(!dir.exists()){
			dir.mkdirs();
		}
		for(int i=0;i<uploadFile.length;i++){
			MultipartFile file = uploadFile[i];
			time = getTime();
			flag = judgeFileType(file);
			if(flag){
			    File target = new File(uploadUrl+time+file.getOriginalFilename()); 
				if (!target.exists()) {
					target.createNewFile();
					file.transferTo(target);
					fileList.add(target.getAbsolutePath());
				} else {
					errorList.add(i);
					continue;
				}
			}else{
				errorList.add(i);
				continue;
			}
		};
		if(!fileList.isEmpty()){
//		rightNumber = dao.InsertByFileName(userId,fileList);
		System.out.println(obj);
		obj.put("rightNumber", rightNumber);
		}else{
			
		}
		if(!errorList.isEmpty()){
		obj.put("errorList", errorList);
		}else{
			
		}
		return obj;
	}
	
}
