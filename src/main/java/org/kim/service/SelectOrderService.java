package org.kim.service;


import org.kim.entity.OrderInfo;

import java.util.List;

/**
 * Created by ABEL on 2017/4/16.
 */
public interface SelectOrderService {
    List<OrderInfo> SelectOrder(String username);
}
