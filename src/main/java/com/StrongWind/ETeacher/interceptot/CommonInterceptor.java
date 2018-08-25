package com.StrongWind.ETeacher.interceptot;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class CommonInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("afterCompletion++++++++++++++++++++++++++++++++++++@@@@@@@@@@@@@@@@");
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("postHandle++++++++++++++++++++++++++++++++++++@@@@@@@@@@@@@@@@");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("访问地址"+request.getHeader("referer"));
		if(request.getHeader("referer")==null){
			response.sendRedirect("index.jsp");
			return false;
		}
		System.out.println("preHandle++++++++++++++++++++++++++++++++++++@@@@@@@@@@@@@@@@");
		
		return true;
	}

}
