package com.guyu.ssm1.user.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.guyu.ssm1.base.controller.BaseController;
import com.guyu.ssm1.exception.AjaxException;
import com.guyu.ssm1.exception.ServiceException;
import com.guyu.ssm1.user.model.UserEntity;
import com.guyu.ssm1.user.service.UserService;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

/**
 * Created by GUYU on 2016/12/18.
 */
@Controller
@Scope("prototype")
@RequestMapping("/user/")
public class UserController extends BaseController{
	//private Logger logger = Logger.getLogger(getClass());
	@Autowired
	private UserService userService;

	/**
	 * 注册用户
	 * */
	@RequestMapping(value = "add.html", method = RequestMethod.POST)
	// @ResponseBody
	public ModelAndView add(UserEntity userEntity) throws AjaxException {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			userEntity.setCreatetime(new Date(System.currentTimeMillis()));
			int result = userService.insert(userEntity);
			if (result == 1) {
				map.put("success", Boolean.TRUE);
				map.put("data", null);
				map.put("message", "添加成功");
			} else {
				map.put("success", Boolean.FALSE);
				map.put("data", null);
				map.put("message", "添加失败");
			}
		} catch (ServiceException e) {
			throw new AjaxException(e);
		}
		logger.info(userEntity);
		return new ModelAndView("redirect:/resources/login");
		// return map;
	}

	/**
	 * 判断用户名是否重复
	 * */
	@RequestMapping(value = "checkusername.html", method = RequestMethod.POST)
	@ResponseBody
	public String checkusername(String name) throws AjaxException {
		Map<String, Boolean> map = new HashMap<>();
		List<UserEntity> userlist;
		try {
			userlist = userService.findByName(name);
			if (userlist.size() == 0) {
				map.put("statu", true);
			} else {
				map.put("statu", false);
			}

		} catch (Exception e) {

			throw new AjaxException(e);
		}
		String jsonString = JSON.toJSONString(map);
		return jsonString;
	}

	/**
	 * 判断用户登陆
	 * */
	@RequestMapping(value = "login.html", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String userLogin(UserEntity userEntity, HttpSession session)
			throws AjaxException {
		Map<String, String> map = new HashMap<>();
		List<UserEntity> userlist;
		try {
			userlist = userService.findByName(userEntity.getUsername());

			if (userlist.size() == 0) {

				map.put("statu", "用户不存在");
			} else {
				if (userlist.get(0).getPassword()
						.equals(userEntity.getPassword())) {
					map.put("statu", "登陆成功");
					// 添加session
					session.setAttribute("user", userlist.get(0));
				} else {

					map.put("statu", "用户名或密码错误");
				}

			}

		} catch (Exception e) {

			throw new AjaxException(e);
		}
		String jsonString = JSON.toJSONString(map);
		return jsonString;
	}

	/**
	 * 用户信息展示
	 * */
	@RequestMapping(value = "Info.html"/*, produces = "text/html;charset=UTF-8"*/)
	//@ResponseBody
	public String userInfo(UserEntity userEntity, HttpSession session)
			throws AjaxException {
		return "/resources/user/Info";
	}

}
