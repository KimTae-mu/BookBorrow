package org.kim.service.impl;


import org.kim.dao.UserMapper;
import org.kim.entity.Book;
import org.kim.service.BookSortService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ABEL on 2017/5/5.
 */
@Service
public class BookSotServiceImpl implements BookSortService {
    @Resource
    UserMapper userMapper;

    public List<Book> BookSort(String sort) {
        List<Book> list = userMapper.BookSort(sort);
        return list;
    }
}
