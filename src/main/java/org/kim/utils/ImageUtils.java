package org.kim.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ABEL on 2017/4/17.
 */
public class ImageUtils {

    public static void doImageIO(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setContentType("image/jpeg");

        //生成随机字串
        String verifyCode = VariCodeUtil.generateVerifyCode(4);
        System.out.print("----" + verifyCode);
        //存入会话session
        request.getSession().setAttribute("verifyCode", verifyCode);
        System.out.print("----");
        //删除以前的
        request.getSession().removeAttribute("verCode");
        request.getSession().setAttribute("verCode", verifyCode.toLowerCase());
        //生成图片
        int w = 100, h = 30;
        VariCodeUtil.outputImage(w, h, response.getOutputStream(), verifyCode);
    }
}
