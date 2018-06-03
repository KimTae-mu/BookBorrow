package org.kim.service.impl;


import org.kim.dao.UserMapper;
import org.kim.entity.User;
import org.kim.service.RegisterService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


/**
 * Created by ABEL on 2017/4/2.
 */
@Service
public class RegisterServiceImpl implements RegisterService {

    @Resource
    UserMapper userMapper;

    /**
     * 注册
     *
     * @param user
     */
    public void save(User user) {
        userMapper.save(user);
    }
}
