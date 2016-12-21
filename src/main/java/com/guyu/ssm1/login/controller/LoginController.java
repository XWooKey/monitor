package com.guyu.ssm1.login.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.guyu.ssm1.base.controller.BaseController;

@Controller
@Scope("prototype")
@RequestMapping("/")
public class LoginController  extends BaseController
{
	/**
	 * 登陆页面跳转
	 * */
	@RequestMapping(value = "login.html")
	public String login() {    
	    // implementation omitted
		return "/resources/login";
	}
	
}
