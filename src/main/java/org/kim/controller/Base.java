package org.kim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by ABEL on 2017/4/17.
 */
@Controller
public class Base {
    HttpServletRequest request;
    HttpServletResponse response;
    HttpSession session;

    @ModelAttribute
    public void setReRs(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
        this.session = request.getSession();
    }
}
