package com.rest.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/6/10.
 */
@Controller
@RequestMapping("/page")
public class PageController {

    //通用，转到任何一个jsp页面
    @RequestMapping("/{pageName}")  //注解必须加，因为restful+post同时调用
    public String goHome(@PathVariable String pageName){
        return pageName;
    }

}
