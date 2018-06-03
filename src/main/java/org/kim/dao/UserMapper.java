package org.kim.dao;


import org.kim.entity.*;

import java.util.List;

/**
 * Created by ABEL on 2017/3/21.
 */
public interface UserMapper {
    /*注册*/
    void save(User user);

    /*通过手机号查找*/
    User selectBymobile(Object object);


    /* 下订单*/
    void order(OrderInfo orderInfo);

    /*查询订单*/
    List<OrderInfo> selectOrder(String username);

    List<Book> BookSort(String sort);

    List<Book> AllBook();

    List<Book> SelectBookByAuthorOrName(String object);

    Person selectPersonInfo(String name);

    void InsertPersonInfo(Person person);

    void updatePersonInfo(Person person);

    void updatePassword(User user);

    void KeepBook(OrderInfo orderInfo);

    List<OrderInfo> SelectKeepBookByUsername(String username);

    List<OrderInfo> BackBookInfo();


    List<History>  SelectHistoryByUsername(String username);

    OrderInfo seeKeepBook(String isbn);

    void BookHistory(History history);

}
