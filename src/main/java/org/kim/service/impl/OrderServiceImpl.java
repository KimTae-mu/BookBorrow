package org.kim.service.impl;


import org.kim.dao.UserMapper;
import org.kim.entity.OrderInfo;
import org.kim.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


/**
 * 预订图书
 * Created by ABEL on 2017/4/14.
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    UserMapper userMapper;

    public void OrderBook(OrderInfo orderInfo) {
        userMapper.order(orderInfo);
    }

}
