package com.rest.manage.controller;


import com.rest.manage.pojo.User;
import org.apache.cxf.common.util.StringUtils;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/7/7.
 */
@Controller
public class LoginController {

    @RequestMapping("/toLogin")
    public String login(){
        //跳转到登录页面
        return "login";
    }


    /**
     * 登录的逻辑
     * 1.判断用户名和密码是否为null
     * 2.根据用户名和密码查询数据库
     * 3.如果能够查询到数据库，证明用户名和密码正确，跳转到系统首页
     * 4.登录不正确，返回登录页面，给用户提示
     * @param userName
     * @param password
     * @return
     */
    @RequestMapping("/login")
    public String login(String userName, String password, Model model, HttpSession httpSession) {

        //判断用户名或密码是否为空
        if (StringUtils.isEmpty(userName) || StringUtils.isEmpty(password)) {
            //证明用户输入的值为空
           // model.addAttribute("errorInfo", "用户名或密码错误");
            //跳转到登录页面
            return "login";
        }

        //以shiro的方式登录
        //1.创建subject对象---就是一个“user”
        Subject subject = SecurityUtils.getSubject();
        //2.登录
        //形成用户名和密码的令牌
        UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
        try {
            subject.login(token);//表示用户要进行登录认证
            //获取真实对象
            User user = (User) subject.getPrincipal();
            //保存一个user对象到session中
            subject.getSession().setAttribute("session_user", user);

            //跳转到系统首页
            return "redirect:/page/index";
        } catch (AuthenticationException e) {
            //登录失败
            e.printStackTrace();//目的是如果一旦报异常，可以通过控制台进行展现
            model.addAttribute("errorInfo", "用户名或密码错误");
            //跳转到登录页面
            return "login";
        }

    }



}
