package org.kim.utils;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import java.io.IOException;

/**
 * Created by ABEL on 2017/3/30.
 */
public class SendSMS {

    private static String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";

    public static String SendSms(String mobile) {
        /*   System.out.println("----------++++++++++++----------");*/

        HttpClient client = new HttpClient();
        PostMethod method = new PostMethod(Url);
        client.getParams().setContentCharset("GBK");
        method.setRequestHeader("ContentType", "application/x-www-form-urlencoded;charset=GBK");
        int mobile_code = (int) ((Math.random() * 9 + 1) * 100000);
        System.out.println(mobile_code);
        String content = new String("您的验证码是：" + mobile_code + "。请不要把验证码泄露给其他人。");


        NameValuePair[] data = {

                //提交短信
                //查看用户名请登录用户中心->验证码、通知短信->帐户及签名设置->APIID
                new NameValuePair("account", "C84041230"),
                //查看密码请登录用户中心->验证码、通知短信->帐户及签名设置->APIKEY
                new NameValuePair("password", "644f90035c2c2a24513c043cee6e13bb"),
                //new NameValuePair("password", util.Md5Util.MD5Encode("密码")),
                new NameValuePair("mobile", mobile),
                new NameValuePair("content", content),
        };
        method.setRequestBody(data);


        try {
            /*  System.out.println("----------++++++++++++----------");*/
            client.executeMethod(method);

            String SubmitResult = method.getResponseBodyAsString();

            //System.out.println(SubmitResult);

            Document doc = DocumentHelper.parseText(SubmitResult);
            Element root = doc.getRootElement();

            String code = root.elementText("code");
            String msg = root.elementText("msg");
            String smsid = root.elementText("smsid");
/*
            System.out.println(code);
            System.out.println(msg);
            System.out.println(smsid);*/

            if ("2".equals(code)) {
                /*    System.out.println("----------++++++++++++----------");*/
                System.out.println("短信提交成功");
                System.out.print("您的验证码是" + mobile_code);
                return mobile_code + "";
            }

        } catch (HttpException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (DocumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }
}
