package com.rest.manage.controller;

import com.rest.common.vo.EasyUIResult;
import com.rest.common.vo.SysResult;
import com.rest.manage.pojo.User;
import com.rest.manage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2017/7/9.
 */
@Controller
@RequestMapping("/item/")
public class UserController {

    @Autowired
    private UserService userService;

    //查询用户列表
    @RequestMapping("query")
    @ResponseBody
    public EasyUIResult queryUserList(Integer page,Integer rows){
        return userService.queryUserList( page, rows);
    }


    //认证
    @RequestMapping("auth")
    @ResponseBody
    public SysResult auth(Long[]ids){
        try {
            userService.updateStatus(3,ids);
            return  SysResult.oK();
        }catch ( Exception e){
            return SysResult.build(201,"");
        }
    }

}
