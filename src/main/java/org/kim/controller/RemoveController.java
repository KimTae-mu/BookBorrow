package org.kim.controller;

import org.kim.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 注销
 * Created by ABEL on 2017/5/24.
 */
@Controller
public class RemoveController {
    @RequestMapping("Remove")
    public String Remove(HttpServletRequest request, Model model) {
        /*  System.out.println("*****---++++-----******");*/
        User user = (User) request.getSession().getAttribute("user");
        String username = (String) request.getSession().getAttribute("username");
        if (user == null && username == null) {

        } else {
            /* System.out.println(user+username);*/
            HttpSession session = request.getSession();
            session.removeAttribute("user");
            session.removeAttribute("username");
            session.invalidate();
            /*  System.out.println(user+username);*/
            model.addAttribute("status", "注销成功");
        }
        return "PersonCenter";
    }
}
