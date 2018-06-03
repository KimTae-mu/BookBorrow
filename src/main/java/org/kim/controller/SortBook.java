package org.kim.controller;


import org.kim.entity.Book;
import org.kim.service.BookSortService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ABEL on 2017/5/4.
 */
@Controller
public class SortBook {
    @Resource
    private BookSortService bookSortService;

    @RequestMapping("BookSort")
    public String sort(@RequestParam("sort") String sort,
                       Model model) throws Exception {
        System.out.println("----------------------");
        /* sort = new String(sort.getBytes("ISO-8859-1"), "utf-8");*/
        System.out.print("00000" + sort + "000000");
        List<Book> list = bookSortService.BookSort(sort);
        System.out.print(list);
        model.addAttribute("sort", list);
        return "BookSort";/*BookSort*/
    }
}
