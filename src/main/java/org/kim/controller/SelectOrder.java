package org.kim.controller;

import org.kim.dao.UserMapper;
import org.kim.entity.OrderInfo;
import org.kim.entity.Person;
import org.kim.service.SelectOrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 查询表中的所有订单数据，并生成验证码
 * Created by ABEL on 2017/4/2.
 */

@Controller
public class SelectOrder {
    @Resource
    SelectOrderService selectOrderService;
    @Resource
    UserMapper userMapper;

    @RequestMapping("OrderInfo")
    public String selectorder(HttpServletRequest request,
                              Model model) throws Exception {
        String username = (String) request.getSession().getAttribute("username");
        if (username == null) {
            model.addAttribute("status", "亲，请您先");
            model.addAttribute("status1", "登录");
        } else {
            Person person = userMapper.selectPersonInfo(username);
            /* System.out.print("---++++----++++----++++---"+person.getName());*/
            List<OrderInfo> list = selectOrderService.SelectOrder(person.getName());
            if (list.size() < 1) {
                model.addAttribute("status2", "您还没有订单信息");
            } else {
                model.addAttribute("order", list);
            }
        }
        return "SelectOrder";
    }
}



       /* //使用遍历将数据从list中一一取出并生成二维码
        for (int i=0;i<list.size();i++){
                    OrderInfo orderInfo= list.get(i);
                    System.out.print(orderInfo.getId()+orderInfo.getUsername());
            String text ="书单："+"\n"+"订单号："+orderInfo.getId()+"\n"+"用户名："+orderInfo.getUsername()+"\n"+"Isbn码："+orderInfo.getIsbn();
            int width = 250;
            int height = 250;
            // 二维码的图片格式
            String format = "gif";
            Hashtable<EncodeHintType,String> hints =
                    new Hashtable<EncodeHintType,String>();
            // 内容所使用编码
            hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
            BitMatrix bitMatrix = new MultiFormatWriter()
                    .encode(text, BarcodeFormat.QR_CODE, width, height, hints);
            // 生成二维码(使用时间作为二维码名的前缀，防止重复)
            File outputFile = new File("d:" + File.separator + new Date().getTime()+".gif");
            MatrixToImageWriter.writeToFile(bitMatrix, format, outputFile);
                }
*/

