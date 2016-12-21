package com.guyu.ssm1.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	// private static final String[] IGNORE_URI = { "/login.jsp",
	// "/Login/","backui/", "frontui/" };
	private static final String[] IGNORE_URI = { "/login.html"};
	private Logger logger = Logger.getLogger(getClass());

	/*
	 * 利用正则映射到需要拦截的路径
	 * 
	 * private String mappingURL;
	 * 
	 * public void setMappingURL(String mappingURL) { this.mappingURL =
	 * mappingURL; }
	 */
	/**
	 * 在业务处理器处理请求之前被调用 如果返回false 从当前的拦截器往回执行所有拦截器的afterCompletion(),再退出拦截器链
	 * 如果返回true 执行下一个拦截器,直到所有的拦截器都执行完毕 再执行被拦截的Controller 然后进入拦截器链,
	 * 从最后一个拦截器往回执行所有的postHandle() 接着再从最后一个拦截器往回执行所有的afterCompletion()
	 */
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//logger.info("==============执行顺序: 1、preHandle================");
		String requestUri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String url = requestUri.substring(contextPath.length());

		//logger.info("requestUri:" + requestUri);
		//logger.info("contextPath:" + contextPath);
		//logger.info("url:" + url);
		
		//boolean flag = false;
		for (String s : IGNORE_URI) {
			if (url.contains(s)) {
				return true;
			}
		}
		
		logger.info(request.getSession().getAttribute("user"));
		
		if(request.getSession().getAttribute("user")!=null)
		{
			return true;
		}
		
		
		// 从session获取登录信息
		// if((String)request.getSession().getAttribute("username")!=null)
		// {
		// return true;
		// }
		// else
		// {
		// if(defineUrls!=null&&defineUrls.size()>0)
		// {
		// if(defineUrls.containsKey(url))
		// {
		// defultLogin=defineUrls.get(url).toString();
		// }
		// }
		// log.info("Interceptor：跳转到login页面！"+defultLogin+"-----");
		// response.sendRedirect(request.getContextPath()+defultLogin);
		// return false;
		// }
		//
		//
		//
		// // String username =
		// (String)request.getSession().getAttribute("username");
		// if(username == null){
		// logger.info("Interceptor：跳转到login页面！");
		// //
		// request.getRequestDispatcher("/WEB-INF/resources/login.jsp").forward(request,
		// response);
		// response.sendRedirect(request.getContextPath() + "/login.html");
		// return false;
		// }else
		// return true;
		request.getRequestDispatcher("/login.html").forward(request, response);
		
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
}
