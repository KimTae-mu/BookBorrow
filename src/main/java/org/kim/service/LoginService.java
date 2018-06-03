package org.kim.service;


import org.kim.entity.User;

import javax.servlet.http.HttpServletRequest;


/**
 * 登录接口
 * Created by ABEL on 2017/4/5.
 */

public interface LoginService {
    User selectByMobile(Object object,
                        String password,
                        HttpServletRequest request);
}
