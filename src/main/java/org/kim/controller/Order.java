package org.kim.controller;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import org.kim.dao.UserMapper;
import org.kim.entity.OrderInfo;
import org.kim.entity.Person;
import org.kim.entity.User;
import org.kim.service.OrderService;
import org.kim.utils.GetId;
import org.kim.utils.MatrixToImageWriter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;

/**
 * 订阅书籍
 * Created by ABEL on 2017/4/11.
 */
@Controller
public class Order {
    @Resource
    OrderService orderService;
    @Resource
    UserMapper userMapper;

    /**
     * 订阅
     *
     * @param request
     * @param model
     * @param isbn
     * @param orderInfo
     * @return
     * @throws Exception
     */
    @RequestMapping("order")

    public String OrderBook(HttpServletRequest request,
                            Model model,
                            @RequestParam("isbn") String isbn,
                            OrderInfo orderInfo) throws Exception {
        System.out.print("--------++++++++++++--------");
        User user = (User) re9);
        String username = (String) request.getSession().getAttribute("username");
            if (username == null) {
            model.addAttribute("Status", "请您先登录,登陆后方可借书");
            return "Login";
        } else {
                /*数据库中查询是否已经实名制*/
            Person person = userMapper.selectPersonInfo(username);
            System.out.print(person);
            if (person == null) {
                System.out.print("-****************----");
                model.addAttribute("status", "请实名制您的信息");
                return "PersonInfo";
            } else {
                System.out.print("-****************----");
                /*数据库中查询已订阅的书籍信息*/
                List<OrderInfo> list = userMapper.selectOrder(person.getName());/*user.getUserName()*/
                System.out.println(list.size());
                if (list.size() < 2) {
                    String id = GetId.getUUID();
                    String text = "书单：" + "\n" + "订单号：" + id + "\n" + "用户名：" + person.getName() + "\n" + "Isbn码：" + isbn;
                    int width = 250;
                    int height = 250;
                    // 二维码的图片格式
                    String format = "gif";
                    Hashtable<EncodeHintType, String> hints =
                            new Hashtable<EncodeHintType, String>();
                    // 内容所使用编码
                    hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
                    BitMatrix bitMatrix = new MultiFormatWriter()
                            .encode(text, BarcodeFormat.QR_CODE, width, height, hints);
                    // 生成二维码(使用时间作为二维码名的前缀，防止重复)
                    String path = new Date().getTime() + ".gif";
                    File outputFile = new File("E:\\Code\\IdeaProjects\\BookBorrow\\src\\main\\webapp\\image" + File.separator + path);
                    /*  System.out.print(outputFile);*/
                    MatrixToImageWriter.writeToFile(bitMatrix, format, outputFile);
                    String address = path;
                    orderInfo.setId(id);
                    //设置当前日期加30E:
                    Date date;
                    Calendar ca = Calendar.getInstance();
                    ca.add(Calendar.DATE, 30);
                    date = ca.getTime();

                    /*设置结束*/
                    /*  System.out.print(date);*/
                    /*JavaBean*/
                    orderInfo.setReturntime(date);
                    orderInfo.setUsername(person.getName());
                    orderInfo.setPhone(user.getMobile());
                    orderInfo.setMail(person.getMail());
                    orderInfo.setIsbn(isbn);
                    orderInfo.setAddress("http://localhost/BookBorrow/image/" + address);
                    /*保存到数据库中*/
                    orderService.OrderBook(orderInfo);
                    model.addAttribute("status", "恭喜您，预定成功！");
                    model.addAttribute("status1", "去查看");
                    /*  System.out.print(orderInfo.getId());*/
                } else {
                    model.addAttribute("status", "对不起每人只可以借阅两本");
                }
                return "OrderBookResult";
            }
        }
    }
}




