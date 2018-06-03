package org.kim.controller;/*
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

*/
/**
 * 找回密码
 * Created by ABEL on 2017/5/23.
 * <p>
 * 找回密码
 *
 * @param mobile
 * @param code
 * @param password
 * @param request
 * @param model
 * @return
 *//*

@Controller
public class FindBackPasswordControll {
    @Resource
    private UserMapper userMapper;

    */
/**
 * 找回密码
 * @param mobile
 * @param code
 * @param password
 * @param request
 * @param model
 * @return
 *//*

    @RequestMapping("FindBackPassword")
    public String FindPassword(@RequestParam("mobile") String mobile,
                               @RequestParam("code") String code,
                               @RequestParam("password") String password,
                               HttpServletRequest request,
                               Model model) {
        if (mobile == null || mobile == "") {
            model.addAttribute("status", "请输入手机号");
            return "FindPassword";
        }
        if (code == null || password == "") {
            model.addAttribute("status", "请输入验证码");
            return "FindPassword";
        }
        if (password == null || password == "") {
            model.addAttribute("status", "请输入新密码");
            return "FindPassword";
        }

        if (!"2345".equals(code)) {
            System.out.println(code);
            model.addAttribute("status", "对不起验证码错误");
        } else {
            User user = new User();
            user.setMobile(mobile);
            user.setPassWord(Md5Util.MD5Encode(password));
            userMapper.updatePassword(user);
           */
/* System.out.println("---------yes-------------");*//*

            model.addAttribute("status", "恭喜您,修改密码成功");
        }

        return "FindPassword";
    }
}
*/
