package com.rest.manage.shiro;

/**
 * Created by Administrator on 2017/7/8.
 */

import com.rest.manage.tool.MD5Hash;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

/**
 * 自定义加密器
 */
public class AuthCredential extends SimpleCredentialsMatcher {
    //通过这个类做加密处理
    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
        // TODO Auto-generated method stub
        //得到用户名和密码的令牌
        UsernamePasswordToken loginToken=(UsernamePasswordToken) token;
        //从令牌中获取用户名和密码
        String username = loginToken.getUsername();
        char[] password = loginToken.getPassword();
        //生成新的加密后的密码
        String md5Password= MD5Hash.getMd5hashPassword(String.valueOf(password), username);
        //将加密后的密码存入token中
        loginToken.setPassword(md5Password.toCharArray());
        return super.doCredentialsMatch(loginToken, info);

    }


}
