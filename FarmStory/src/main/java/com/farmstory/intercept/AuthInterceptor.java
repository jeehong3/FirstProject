package com.farmstory.intercept;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.farmstory.vo.Account;

public class AuthInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		Account account = (Account) request.getSession().getAttribute("loginuser");
		
		String url = request.getRequestURI();
		boolean redirect = false;
		if (url.contains("/value/") || 
			url.contains("plant_regist.action") ||
			url.contains("diary_write.action") ||
			url.contains("diary_list.action") 
			&& account == null) {
			
			redirect = true;
		}
		
		if (redirect) {
			//request.getSession().setAttribute("checkedLogin", "empty");
			response.sendRedirect("/farmstory/home.action?checkedLogin=empty");
		}
		return !redirect;//false를 반환하면 요청 처리 중단
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}



	
}
