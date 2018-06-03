package org.kim.controller;

import org.kim.dao.UserMapper;
import org.kim.entity.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ABEL on 2017/5/6.
 */
@Controller
public class GainAllBook {
    @Resource
    UserMapper userMapper;

    @RequestMapping("GainAllBook")
    public String GainBook(Model model) {
        System.out.print("nihao");
        List<Book> list = userMapper.AllBook();
        model.addAttribute("AllBook", list);
        for (Book book : list) {
            System.out.print(book.getBookname());
        }
        return "selcet";
    }
}
