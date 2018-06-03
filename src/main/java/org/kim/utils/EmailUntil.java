package org.kim.utils;

import com.sun.mail.util.MailSSLSocketFactory;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

/**
 * Created by ABEL on 2017/6/4.
 */
public class EmailUntil {

    // 发件人的 邮箱 和 密码（替换为自己的邮箱和密码）
    // PS: 某些邮箱服务器为了增加邮箱本身密码的安全性，给 SMTP 客户端设置了独立密码（有的邮箱称为“授权码”）,
    //     对于开启了独立密码的邮箱, 这里的邮箱密码必需使用这个独立密码（授权码）。
    public static String myEmailAccount = "804480875@qq.com";
    public static String myEmailPassword = "oycvsotehjfsbddd";/*ubiaxwqhoxdcbehh*//*ztntgqueefzzbejd*/

    // 网易163邮箱的 SMTP 服务器地址为: smtp.163.com
    public static String myEmailSMTPHost = "smtp.qq.com";

    //产生4位邮箱验证码
    public static int eamilcode = (int) ((Math.random() * 9 + 1) * 100000);


    public static String sendEmail(String receiveMailAccount) {
        try {
            System.out.println("欢迎使用验证码");
            // 1. 创建参数配置, 用于连接邮件服务器的参数配置
            Properties props = new Properties();                    // 参数配置
            props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
            props.setProperty("mail.smtp.host", myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
            props.setProperty("mail.smtp.auth", "true");            // 需要请求认证

            MailSSLSocketFactory sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
            props.put("mail.smtp.ssl.enable", "true");
            props.put("mail.smtp.ssl.socketFactory", sf);

            // 2. 根据配置创建会话对象, 用于和邮件服务器交互
            Session session = Session.getDefaultInstance(props);
            /*   session.setDebug(true);       */                          // 设置为debug模式, 可以查看详细的发送 log

            // 3. 创建一封邮件
            try {
                System.out.println("第二层");
                MimeMessage message = createMimeMessage(session, myEmailAccount, receiveMailAccount);
                // 4. 根据 Session 获取邮件传输对象
                Transport transport = session.getTransport();

                // 5. 使用 邮箱账号 和 密码 连接邮件服务器, 这里认证的邮箱必须与 message 中的发件人邮箱一致, 否则报错
                System.out.println("第三层");
                transport.connect(myEmailAccount, myEmailPassword);
                System.out.println("发送成功,系统产生的验证码为" + eamilcode);

                // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
                transport.sendMessage(message, message.getAllRecipients());

                // 7. 关闭连接
                transport.close();

                return eamilcode + "";
            } catch (Exception e) {
                System.out.print(e);
                return null;
            }

        } catch (Exception e) {
            System.out.print(e);
            return null;
        }

    }

    /**
     * 创建一封只包含文本的简单邮件
     *
     * @param session     和服务器交互的会话
     * @param sendMail    发件人邮箱
     * @param receiveMail 收件人邮箱
     * @return
     * @throws Exception
     */
    private static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);

        // 2. From: 发件人
        message.setFrom(new InternetAddress(sendMail, "图书管理员", "UTF-8"));

        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "804480875@qq.com", "UTF-8"));

        // 4. Subject: 邮件主题
        message.setSubject("还书提醒", "UTF-8");

        // 5. Content: 邮件正文（可以使用html标签）
        message.setContent("尊敬的先生/女士，您在本图书馆借阅的书籍即将到期，为了不影响您的信誉请您注意您的还书日期及时归还。", "text/html;charset=UTF-8");

        // 6. 设置发件时间
        message.setSentDate(new Date());

        // 7. 保存设置
        message.saveChanges();

        return message;
    }
}
