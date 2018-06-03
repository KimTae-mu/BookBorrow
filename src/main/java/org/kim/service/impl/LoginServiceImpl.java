package org.kim.service.impl;


import org.kim.dao.UserMapper;
import org.kim.entity.User;
import org.kim.service.LoginService;
import org.kim.utils.Md5Util;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 登录方法实现
 * Created by ABEL on 2017/4/5.
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Resource
    UserMapper userMapper;

    public User selectByMobile(Object object,
                               String password,
                               HttpServletRequest request) {

        User user = userMapper.selectBymobile(object);
        request.getSession().setAttribute("user", user);
      /* System.out.println(user.getPassWord());*/
        if (user != null && user.getPassWord().equals(Md5Util.MD5Encode(password))) {
            return user;
        }
        return null;
    }
}
