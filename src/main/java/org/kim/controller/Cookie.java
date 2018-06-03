package org.kim.controller;/*


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

*/
/**
 * Created by ABEL on 2017/5/8.
 *//*

public class Cookie {
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws ServletException, IOException {
        String param = request.getParameter("param");
        String path = request.getContextPath();
        PrintWriter out = response.getWriter();
        //......
        if ("recode".equals(param)) {
            String ep_id = request.getParameter("ep_id");
            // 如果是首页显示，则ep_id为null，则只显示cookie中的值即可。
            // 根据cookie的name，重设对应的value
            String cvalue = CookieUtil.BuildCookie("productRecode", ep_id, request);
            // 将新的cookie写入
            Cookie cookie = new Cookie("productRecode", cvalue);
            cookie.setMaxAge(3600 * 1000);
            cookie.setPath("/");
            response.addCookie(cookie);
            // 根据id获得对应的产品集合，最终将产品列表显示到jsp页面中
            List<Easybuy_Product> eps = new ArrayList<Easybuy_Product>();
            for (String c : cvalue.split(",")) {
                eps.add(productService.getProductByEp_Id(Integer.parseInt(c)));
            }
            request.getSession().setAttribute("productRecode", eps);
            response.sendRedirect(request.getContextPath() + "/product-view.jsp?ep_id=" + ep_id);
        }
    }


}
*/
