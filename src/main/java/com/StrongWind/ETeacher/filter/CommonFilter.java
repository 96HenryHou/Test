package com.StrongWind.ETeacher.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CommonFilter implements Filter{
    private FilterConfig filterConfig;    
    private final String LOGIN_PATH="login.jsp";
    private final String REGISTER_PATH="register.jsp";
    
	private boolean isLogin(HttpServletRequest request) {
		boolean flag = false;
		HttpSession session = request.getSession();

		System.out.println(request.getRequestURI());
		System.out.println(session.getAttribute("userLogin"));
		if (!request.getRequestURI().endsWith(LOGIN_PATH)&&!request.getRequestURI().endsWith(REGISTER_PATH)) {
			if (session.getAttribute("loginUser") != null) {
				flag = false;
				return flag;
			} else {
				flag = true;
				return flag;
			}
		} else {
			return flag;
		}
	}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		 System.out.println("初始化了");    
		  
		this.filterConfig = filterConfig; 
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		chain.doFilter(request, response);  
		// TODO Auto-generated method stub
//		HttpServletRequest req = (HttpServletRequest)request;
//		HttpServletResponse resp = (HttpServletResponse)response;
//		resp.setCharacterEncoding("utf-8");
//	    resp.setContentType("text/html;charset=utf-8");
//	   System.out.println(req.getRequestURI()+"aaaaaaaaaaa");
//	    if(isLogin(req)){
//	    	resp.sendRedirect("login.jsp");
//	    	System.out.println("跳转到登录页面");
//	    	return;
//	    }else{
//	    	chain.doFilter(request, response);  
//	    }
//		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		   System.out.println("销毁了");    
	}

}
