package org.kim.controller;

import org.kim.dao.UserMapper;
import org.kim.entity.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 个人中心
 * Created by ABEL on 2017/5/22.
 */
@Controller
public class PersonController {
    @Resource
    private UserMapper userMapper;

    /**
     * 查看个人信息
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("PersonInfo")
    public String PersonInfo(HttpServletRequest request,
                             Model model) {
        String username = (String) request.getSession().getAttribute("username");
        if (username == null) {
            model.addAttribute("status", "亲，请您先");
            model.addAttribute("status1", "登录");
            return "PersonInfo2";
        } else {
            /*数据库查找个人信息*/
            Person person = userMapper.selectPersonInfo(username);
            if (person == null) {
                model.addAttribute("status", "亲，您还没有完善个人信息");
                return "PersonInfo";
            } else {
                model.addAttribute("person", person);
                return "PersonInfo1";
            }
        }
    }


    /**
     * 添加个人信息
     *
     * @param name
     * @param sex
     * @param address
     * @param mail
     * @param request
     * @param model
     * @return
     * @throws Exception
     */

    @RequestMapping("InsertPerson")
    public String Person(@RequestParam("username") String name,
                         @RequestParam("sex") String sex,
                         @RequestParam("address") String address,
                         @RequestParam("mail") String mail,
                         HttpServletRequest request,
                         Model model) throws Exception {
        if (name == null || name == "") {
            model.addAttribute("status", "请填写用户名");
            return "PersonInfo";
        }
        if (sex == null || sex == "") {
            model.addAttribute("status", "请输入性别");
            return "PersonInfo";
        }
        if (address == null || address == "") {
            model.addAttribute("status", "请输入地址");
            return "PersonInfo";
        }
        if (mail == null || mail == "") {
            model.addAttribute("status", "请输入邮箱");
            return "PersonInfo";
        }
        /*name = new String(name.getBytes("ISO-8859-1"), "utf-8");
        sex = new String(sex.getBytes("ISO-8859-1"), "utf-8");
        address = new String(address.getBytes("ISO-8859-1"), "utf-8");*/
        System.out.print(name + sex);
        String username = (String) request.getSession().getAttribute("username");
        /*Person javabean*/
        Person person = new Person();
        person.setUsername(username);
        person.setName(name);
        person.setSex(sex);
        person.setAddress(address);
        person.setMail(mail);
        /*Dao*/
        userMapper.InsertPersonInfo(person);
        person = new Person();
        person = userMapper.selectPersonInfo(username);
        model.addAttribute("person", person);
        model.addAttribute("status", "完善信息成功");
        return "PersonInfo1";
    }

    /**
     * 更新个人信息
     * */
    @RequestMapping("updatePerson")
    public String updatePerson(@RequestParam("username") String name,
                               @RequestParam("sex") String sex,
                               @RequestParam("address") String address,
                               @RequestParam("mail") String mail,
                               HttpServletRequest request,
                               Model model) throws Exception {
        System.out.print(name + sex + address + "----++++---");

        if (name == null || name == "") {
            model.addAttribute("status", "请填写用户名");
            return "PersonInfo";
        }
        if (sex == null || sex == "") {
            model.addAttribute("status", "请输入性别");
            return "PersonInfo";
        }
        if (address == null || address == "") {
            model.addAttribute("status", "请输入地址");
            return "PersonInfo";
        }
        if (mail == null || mail == "") {
            model.addAttribute("status", "请输入邮箱");
            return "PersonInfo";
        }
       /* name = new String(name.getBytes("ISO-8859-1"), "utf-8");
        sex = new String(sex.getBytes("ISO-8859-1"), "utf-8");
        address = new String(address.getBytes("ISO-8859-1"), "utf-8");*/


        System.out.print(name + sex + address + "----++++---");

        String username = (String) request.getSession().getAttribute("username");
        Person person = new Person();
        person.setUsername(username);
        person.setName(name);
        person.setSex(sex);
        person.setAddress(address);
        person.setMail(mail);
        userMapper.updatePersonInfo(person);
        Person person1 = userMapper.selectPersonInfo(username);
        model.addAttribute("person", person1);
        model.addAttribute("status", "修改信息成功");
        return "PersonInfo1";
    }


}
