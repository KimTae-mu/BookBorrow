package org.kim.controller;


import org.kim.entity.User;
import org.kim.service.LoginService;
import org.kim.utils.GetId;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 登录
 * Created by ABEL on 2017/4/2.
 */
@Controller
public class Login extends Base {

    @Resource
    private LoginService loginService;

/*    @RequestMapping("authImage")
    public void image() throws IOException {
        ImageUtils.doImageIO(request, response);
    }*/

    /**
     * 登录
     *
     * @param object
     * @param password
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("login")
    public String TestCode(
            @RequestParam("Object") Object object,
            @RequestParam("password") String password,
            HttpServletRequest request,
            /* @RequestParam("code") String code,*/

            Model model) {
        /*通过输入的用户名或密码查询该用户是否存在*/
        User user = loginService.selectByMobile(object, password, request);
        /* System.out.println(user);*/
        /* String fyCode = (String) session.getAttribute("verifyCode");*/
        String id = GetId.getUUID();
        /*  System.out.print("----" + id + "--------");*/
        if (user != null) {
            /*获取用户名并存储到session中*/
            request.getSession().setAttribute("username", user.getUserName());
            /* System.out.println("8888"+request.getSession().getAttribute("username"));*/
            model.addAttribute("sta", user);
            model.addAttribute("status", user.getUserName());
            return "First";
        } else {
            /* System.out.println("-----error-----");*/
            model.addAttribute("Status", "对不起，手机号或密码错误");
            return "Login";
        }
    }
}