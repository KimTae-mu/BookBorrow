package org.kim.controller;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.kim.entity.Book;
import org.kim.entity.BookInfo;
import org.kim.service.BookSortService;
import org.kim.utils.BookXMLParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ABEL on 2017/4/9.
 */

@Controller
public class RetrieveDocumentByURL {
    @Resource
    private BookSortService bookSortService;

    /**
     * 获取书籍详细信息
     *
     * @param isbn
     * @param model
     * @param sort
     * @param request
     * @param response1
     * @return
     * @throws ClientProtocolException
     * @throws IOException
     */

    @RequestMapping("gain")
    public String GainBookInfo(@RequestParam("isbn") String isbn,
                               Model model,
                               @RequestParam("sort") String sort,
                               HttpServletRequest request,
                               HttpServletResponse response1
    ) throws ClientProtocolException, IOException {
        /* sort = new String(sort.getBytes("ISO-8859-1"), "utf-8");*/
        System.out.print("-----" + sort);
        List<Book> list1 = bookSortService.BookSort(sort);
        String url = ("http://api.douban.com/book/subject/isbn/" + isbn);
        DefaultHttpClient client = new DefaultHttpClient();
        HttpGet get = new HttpGet(url);
        HttpResponse response = client.execute(get);
        HttpEntity entity = response.getEntity();
        InputStream is = entity.getContent();
        BookInfo book = new BookXMLParser(is).getBook();
        String title = book.getTitle();
        String summary = book.getSummary();
        String price = book.getPrice();
        String author = book.getAuthor();
        String imagepath = book.getImagepath();
        BookInfo bookInfo = new BookInfo();
        bookInfo.setTitle(title);
        bookInfo.setSummary(summary);
        bookInfo.setAuthor(author);
        bookInfo.setPrice(price);
        bookInfo.setImagepath(imagepath);
        bookInfo.setIsbn13(book.getIsbn13());
        bookInfo.setPages(book.getPages());
        bookInfo.setTags(book.getTags());
        bookInfo.setPubdate(book.getPubdate());
        bookInfo.setPublisher(book.getPublisher());
        List<BookInfo> list = new ArrayList<BookInfo>();
        list.add(bookInfo);
       /* System.out.println("-------success-------");
        System.out.println(list);*/
        model.addAttribute("book", list);
        model.addAttribute("sortbook", list1);
        /*   System.out.print("-------success-------");*/
        return "BookInf";/*BookInf*/
    }
}
