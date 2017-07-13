package com.rest.manage.mapper;

import com.rest.common.mapper.SysMapper;
import com.rest.manage.pojo.User;
import com.rest.manage.pojo.UserInfo;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/8.
 */
public interface UserMapper extends SysMapper<User> {

    List<String> findModuleListByUserId(Long id);

    List<User> queryUserList();

    User findUserByUsername(String username);

    List<UserInfo> findUserInfo();


    void updateStatus(Map<String, Object> map);

    /**
     * 根据主键查询user信息
     * @param id 
     * @return user对象
     */
	public User selectUserByPrimaryKey(Long id);
}
