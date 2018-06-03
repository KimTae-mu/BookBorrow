package org.kim.service.impl;


import org.kim.dao.UserMapper;
import org.kim.entity.OrderInfo;
import org.kim.service.SelectOrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ABEL on 2017/4/16.
 */
@Service
public class SelecetOrderServiceImpl implements SelectOrderService {
    @Resource
    UserMapper userMapper;

    public List<OrderInfo> SelectOrder(String username) {
        List<OrderInfo> orderInfo = userMapper.selectOrder(username);
        return orderInfo;
    }
}
