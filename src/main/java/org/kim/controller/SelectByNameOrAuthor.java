package org.kim.controller;

import org.kim.dao.UserMapper;
import org.kim.entity.Book;
import org.kim.entity.History;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by ABEL on 2017/5/9.
 */
@Controller
public class SelectByNameOrAuthor {
    @Resource
    UserMapper userMapper;

    /**
     * 通过作者或书名查找
     *
     * @param object
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("ByNameOrAuthor")
    public String selectByNameOrAuthor(@RequestParam("Object") String object,
                                       HttpServletRequest request,
                                       Model model) throws Exception {
        /* object = new String(object.getBytes("ISO-8859-1"), "utf-8");*/ //转码
        /* System.out.print("----"+object+"----");*/
        String username = (String) request.getSession().getAttribute("username");
        if (username != null) {
            /* System.out.print("nihao");*/
            History history = new History();
            history.setUsername(username);
            history.setObject(object);
            userMapper.BookHistory(history);
        } else {

        }
        List<Book> list = userMapper.SelectBookByAuthorOrName(object);
        /* System.out.print(list.size());*/
        if (list.size() < 1) {
            model.addAttribute("status", "亲，对不起没有找到 X﹏X");
        } else {
            model.addAttribute("Result", list);
        }
        return "SelectResult";
    }

    @RequestMapping("HistoryBook")
    public String History(HttpServletRequest request,
                          Model model) {
        String username = (String) request.getSession().getAttribute("username");
        if (username == null) {
            model.addAttribute("Status", "请您先登录,登陆后方可查看");
            return "Login";
        } else {
            List<History> list = userMapper.SelectHistoryByUsername(username);
            model.addAttribute("list", list);
            return "History";
        }

    }


}
