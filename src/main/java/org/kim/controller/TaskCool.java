package org.kim.controller;

import org.kim.dao.UserMapper;
import org.kim.entity.OrderInfo;
import org.kim.utils.EmailUntil;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 设置规定时间提醒
 * Created by ABEL on 2017/6/4.
 */
@Component
public class TaskCool extends Base {
    @Resource
    UserMapper userMapper;

    public void testJob() {
        List<OrderInfo> list = userMapper.BackBookInfo();
        for (OrderInfo orderInfo : list) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String date = sdf.format(orderInfo.getReturntime());
            /*  System.out.println("====="+date+"*******"+orderInfo.getMail());*/
            sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            while (date.equals(sdf.format(new Date()))) {
                /*   System.out.println("-----+++++------");*/
                String email = orderInfo.getMail();
                EmailUntil.sendEmail(email);
                /*  System.out.print("加完后：");*/
            }
        }
    }
}

