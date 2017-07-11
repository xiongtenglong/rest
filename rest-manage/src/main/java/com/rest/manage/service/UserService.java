package com.rest.manage.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rest.common.service.BaseService;
import com.rest.common.vo.EasyUIResult;
import com.rest.manage.mapper.UserMapper;
import com.rest.manage.pojo.User;
import com.rest.manage.pojo.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/8.
 */
@Service
public class UserService extends BaseService<User>{

    @Autowired
    private UserMapper userMapper;

    //根据用户id查找所负责的模块列表
    public List<String> findModuleListByUserId(Long id){
        return userMapper.findModuleListByUserId(id);
    }

    public EasyUIResult queryUserList(Integer page, Integer rows) {
        List<User> list1=userMapper.queryUserList();
        List<UserInfo> list2= userMapper.findUserInfo();
        for (User user:list1){
            for (UserInfo ui:list2){
                if (ui.getUserInfoId()==user.getId()){
                    user.setName(ui.getName());
                    user.setCardNo(ui.getCardNo());
                    user.setCardPath(ui.getCardPath());
                    user.setEmail(ui.getEmail());
                    user.setGender(ui.getGender());
                    user.setGrade(ui.getGrade());
                    user.setStatus(ui.getStatus());
                    break;
                }
            }
        }
        PageHelper.startPage(page,rows);
        List<User> list=userMapper.queryUserList();
        PageInfo<User> info=new PageInfo<User>(list);
        return  new EasyUIResult(info.getTotal(),info.getList());
    }

    //根据用户名查找用户对象
    public User findUserByUsername(String username){
        return userMapper.findUserByUsername(username);
    }

    public void updateStatus(int i, Long[] ids) {
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("ids",ids);
        map.put("status",i);
        userMapper.updateStatus(map);
    }


}
