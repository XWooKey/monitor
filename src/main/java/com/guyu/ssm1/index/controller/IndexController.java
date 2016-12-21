package com.guyu.ssm1.index.controller;


import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.guyu.ssm1.base.controller.BaseController;
import com.guyu.ssm1.user.model.UserEntity;


@Controller
@Scope("prototype")
@RequestMapping("/")
public class IndexController extends BaseController{
	/**
	 *跳转首页
	 * */
	@RequestMapping(value = "index.html")
	// @ResponseBody
	public String index(UserEntity userEntity){
		return "/resources/index";
	}

//	@RequestMapping(value = "{petId}.html", produces="application/json")
//	public String getPet(@PathVariable String petId) {    
//	    // implementation omitted
//		return "/resources/" + petId;
//	}
	
	
	@RequestMapping(value = "register.html")
	public String register() {    
	    // implementation omitted
		return "/resources/register";
	}

}
