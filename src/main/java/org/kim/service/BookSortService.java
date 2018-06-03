package org.kim.service;

import org.kim.entity.Book;

import java.util.List;

/**
 * Created by ABEL on 2017/5/5.
 */
public interface BookSortService {
    List<Book> BookSort(String sort);
}
