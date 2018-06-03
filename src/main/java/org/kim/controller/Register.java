package org.kim.controller;

import org.kim.dao.UserMapper;
import org.kim.entity.User;
import org.kim.service.RegisterService;
import org.kim.utils.Md5Util;
import org.kim.utils.SendSMS;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by ABEL on 2017/4/2.
 */

@Controller

public class Register {
    @Resource
    private RegisterService add;
    @Resource
    private UserMapper userMapper;

    /**
     * 注册
     *
     * @param username
     * @param password
     * @param mobile
     * @param code
     * @param request
     * @return
     */
    @RequestMapping("Register")
    public String Test(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            @RequestParam("mobile") String mobile,
            @RequestParam("code") String code,
            HttpServletRequest request,
            Model model) throws Exception {
        System.out.println("nihao11111");
        /* username = new String(username.getBytes("ISO-8859-1"), "utf-8");*/
        System.out.print(username);
        System.out.print(mobile);
          String Code=(String)request.getSession().getAttribute("mobile_code");
        System.out.println(Code);

        if (username == null || username == "") {
            model.addAttribute("status", "请填写用户名");
            return "Register";
        }
        if (password == null || password == "") {
            model.addAttribute("status", "请输入密码");
            return "Register";
        }
        if (mobile == null || mobile == "") {
            model.addAttribute("status", "请输入手机号");
            return "Register";
        }
        if (code == null) {
            model.addAttribute("status", "请输入验证码");
            return "Register";
        }
        /*查询数据库中该用户名和手机号是否已被注册，Dao*/
        User user = userMapper.selectBymobile(mobile);
        User user1 = userMapper.selectBymobile(username);
        System.out.println("---" + user + "-----");
        try {

            if (user != null) {
                model.addAttribute("status", "手机号已存在");
                return "Register";
            } else {
                if (user1 != null) {
                    model.addAttribute("status", "用户名已存在");
                    return "Register";
                } else {

                    if (!Code.equals(code)) {
                        /* System.out.println(code);*/
                        model.addAttribute("status", "对不起验证码错误");
                    } else {
                        /*javabean*/
                        user = new User();
                        user.setUserName(username);
                        user.setPassWord(Md5Util.MD5Encode(password));
                        user.setMobile(mobile);
                        /*保存到数据库中*/
                        add.save(user);
                        /*    System.out.println("---------yes-------------");*/
                        model.addAttribute("status", "恭喜您，注册成功");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "Register";
    }

    /**
     * 生成验证码
     *
     * @param mobile
     * @param request
     */
    @RequestMapping("send")
    public void SendSms(@RequestParam("mobile") String mobile, HttpServletRequest request) {
       /* System.out.println("+++++");
        System.out.println(mobile);*/
        String mobile_code = SendSMS.SendSms(mobile);
        System.out.print("yanzhengma" + mobile_code);
//        将系统生成的验证码放到session中
        request.getSession().setAttribute("mobile_code", mobile_code);
    }

}
