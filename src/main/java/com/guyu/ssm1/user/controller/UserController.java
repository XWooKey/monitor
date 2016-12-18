package com.guyu.ssm1.user.controller;

import com.guyu.ssm1.exception.AjaxException;
import com.guyu.ssm1.exception.ServiceException;
import com.guyu.ssm1.user.model.UserEntity;
import com.guyu.ssm1.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by GUYU on 2016/12/18.
 */
@Controller
@Scope("prototype")
@RequestMapping("/user/")
public class UserController {

    @Autowired
    private UserService userService;


    @RequestMapping("add.html")
    @ResponseBody
    public Object add(UserEntity userEntity) throws AjaxException
    {
        Map<String, Object> map = new HashMap<String, Object>();
        try
        {
            System.out.println("adduser");
            userEntity.setCreatetime(new Date(System.currentTimeMillis()));
            int result = userService.insert(userEntity);
            if(result == 1)
            {
                map.put("success", Boolean.TRUE);
                map.put("data", null);
                map.put("message", "添加成功");
            }else
            {
                map.put("success", Boolean.FALSE);
                map.put("data", null);
                map.put("message", "添加失败");
            }
        }catch(ServiceException e)
        {
            throw new AjaxException(e);
        }


        return map;
    }
}
