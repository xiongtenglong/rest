package com.rest.manage.shiro;

/**
 * Created by Administrator on 2017/7/8.
 */

import com.rest.manage.pojo.User;
import com.rest.manage.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.web.filter.mgt.DefaultFilter;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.apache.shiro.web.filter.mgt.DefaultFilter.user;

/**
 * 登录认证
 * 通过自定义的realm将用户真实的信息返回给安全管理器
 */
public class AuthRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;
    //获取授权信息
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection pringcipals) {
        //得到令牌
        User user=(User) SecurityUtils.getSubject().getPrincipal();
        //准备用户的真实的模块信息
        List<String> moduleList=userService.findModuleListByUserId(user.getId());

        //权限信息的对象
        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        //将用户的权限信息交给shiro管理
        info.addStringPermissions(moduleList);
        return info;

    }

    //获取认证信息
    /**
     * 通过自定义的realm将用户的真实信息返回给安全管理器
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        // TODO Auto-generated method stub
        //将token进行格式转化
        UsernamePasswordToken loginToken=(UsernamePasswordToken) token; //用户名和密码的令牌
        String userName = loginToken.getUsername();
//        User curUser=new User();
//        curUser.setUsername(userName);
        //根据用户名查询用户对象
//        User user=userService.queryByWhere(curUser);
        User user = userService.findUserByUsername(userName);

        /** 简单认证信息对象 SimpleAuthenticationInfo
         * principal:真实的用户对象
         * credentials:真实的密码
         */
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(),this.getName());
        return info;
    }


}