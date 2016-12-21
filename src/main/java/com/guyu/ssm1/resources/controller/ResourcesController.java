package com.guyu.ssm1.resources.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.guyu.ssm1.base.controller.BaseController;
import com.guyu.ssm1.exception.AjaxException;
import com.guyu.ssm1.resources.model.ResourcesEntity;
import com.guyu.ssm1.resources.service.ResourcesService;
import com.guyu.ssm1.user.model.UserEntity;
import com.guyu.ssm1.user.service.UserService;

@Controller
@Scope("prototype")
@RequestMapping("/resources/")
public class ResourcesController extends BaseController {

	@Autowired
	private ResourcesService resourcesService;

	/**
	 * 返回该用户的菜单
	 * */
	@RequestMapping(value = "listMenu.html", /* method = RequestMethod.POST, */produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String userLogin(HttpSession session) throws AjaxException {
		UserEntity userEntity = (UserEntity) session.getAttribute("user");
		List<ResourcesEntity> resourcesList;
		try {
			resourcesList = resourcesService.findAllByUserId(userEntity);

		} catch (Exception e) {

			throw new AjaxException(e);
		}

		// 开始封装json
		List<Map<String, Object>> aa = new ArrayList<>();
		// ResourcesEntity re:resourcesList
		for (int i = 0; i < resourcesList.size(); i++) {
			ResourcesEntity re = resourcesList.get(i);
			/**
			 * "F_ModuleId": "eab4a37f-d976-42b7-9589-489ed0678151", 		//唯一ID
			 * "F_ParentId": "16d4e2d5-d154-455f-94f7-63bf80ab26aa", 		//父级ID--
			 * "F_EnCode": "Client_ExpensesType", "F_FullName": "支出种类", //名称--
			 * "F_Icon": "fa fa-tag", 										//图标--
			 * "F_UrlAddress":"/SystemManage/DataItemList/Index?ItemCode=Client_ExpensesType",//地址 --
			 * "F_Target": "iframe",										//打开方式 "iframe" "expand"
			 * "F_IsMenu": 1, 												//是否有子菜单 0有 1没有
			 * "F_AllowExpand": 0, 											//?
			 * "F_IsPublic": 0, 											//?
			 * "F_AllowEdit": null											//?
			 * "F_AllowDelete":null, 										//?
			 * "F_SortCode": 10,											//排序规则
			 * "F_DeleteMark": 0, 											//？
			 * "F_EnabledMark": 1, 											//？
			 * "F_Description": null, 										//?
			 * "F_CreateDate": "2016-04-20 15:06:10", 						//创建时间
			 * "F_CreateUserId":"System", 									//创建用户
			 * "F_CreateUserName": "超级管理员", 							//创建用户
			 * "F_ModifyDate": "2016-04-20 15:06:46", 						//修改时间
			 * "F_ModifyUserId":"System"，									//修改ID
			 * "F_ModifyUserName": "超级管理员" 							//修改用户
			 * */

			Map<String, Object> map = new HashMap<>();
			map.put("F_ModuleId", re.getId().toString());
			map.put("F_ParentId",re.getParent_id()==null?"0":re.getParent_id().toString());
			map.put("F_EnCode", re.getKey());
			map.put("F_FullName", re.getName());
			map.put("F_Icon", re.getIcon());
			map.put("F_UrlAddress", re.getSource_url());
			map.put("F_Target", re.getHas_child() == 0 ? "iframe" : "expand");
			map.put("F_IsMenu", re.getType());
			map.put("F_AllowExpand", re.getHas_child());
			map.put("F_IsPublic", 0);
			map.put("F_AllowEdit", null);
			map.put("F_AllowDelete", null);
			map.put("F_SortCode", i);
			map.put("F_DeleteMark", 0);
			map.put("F_EnabledMark", 1);
			map.put("F_Description", null);
			map.put("F_CreateDate", null);
			map.put("F_CreateUserId", null);
			map.put("F_CreateUserName", null);
			map.put("F_ModifyDate", null);
			map.put("F_ModifyUserId", null);
			map.put("F_ModifyUserName", null);
			aa.add(map);
			
		}
		String jsonString = JSON.toJSONString(aa,SerializerFeature.WriteMapNullValue,SerializerFeature.WriteNullStringAsEmpty); 
		//String jsonString = JSON.toJSONString(aa);
		return jsonString;
	}

}
