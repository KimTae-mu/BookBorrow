package org.kim.controller;

import org.kim.dao.UserMapper;
import org.kim.entity.Book;
import org.kim.entity.OrderInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by ABEL on 2017/5/23.
 */
@Controller
public class KeepBookController {
    @Resource
    private UserMapper userMapper;

    /**
     * 查看收藏
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("SeeKeepBook")
    public String SeeKeepBook(HttpServletRequest request,
                              Model model) {
        String username = (String) request.getSession().getAttribute("username");
        /* System.out.print(username);*/
        if (username == null) {
            model.addAttribute("status", "亲，请您先");
            model.addAttribute("status1", "登录");
        } else {
            /* System.out.print("##########");*/
            List<OrderInfo> list = userMapper.SelectKeepBookByUsername(username);
            model.addAttribute("Result", list);
        }
        return "KeepBook";
    }

    /**
     * 添加收藏
     *
     * @param isbn
     * @param request
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("KeepBook")
    public String KeepBook(@RequestParam("isbn") String isbn,
                           HttpServletRequest request,
                           Model model) throws Exception {
        String username = (String) request.getSession().getAttribute("username");
        if (username == null) {
            model.addAttribute("Status", "请您先登录,登陆后方可收藏图书");
            return "Login";
        } else {
            OrderInfo orderInfo = userMapper.seeKeepBook(isbn);
            if (orderInfo != null) {
                model.addAttribute("keep", "重复收藏，您的收藏中已有该图书");
            } else {
                List<Book> list = userMapper.SelectBookByAuthorOrName(isbn);
                for (Book book : list) {
                    orderInfo = new OrderInfo();
                    orderInfo.setUsername(username);
                    orderInfo.setBookname(book.getBookname());
                    orderInfo.setActor(book.getActor());
                    orderInfo.setAddress(book.getAddress());
                    orderInfo.setSort(book.getSort());
                    orderInfo.setIsbn(isbn);
                    userMapper.KeepBook(orderInfo);
                    model.addAttribute("keep", "恭喜您，收藏成功");
                    model.addAttribute("keep1", "去查看");
                }
            }
            return "KeepBookResult";
        }
    }
}





