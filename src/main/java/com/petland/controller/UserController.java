package com.petland.controller;

import com.petland.entity.User;
import com.petland.service.Impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: PetLand
 * @description:
 * @author: DY
 * @create: 2024-02-07 22:10
 **/
@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("/login")
    @ResponseBody
    public boolean login(User user, HttpServletRequest request) {
        return userService.login(user, request);
    }

    @RequestMapping("/loginOut")
    @ResponseBody
    public boolean loginOut(HttpServletRequest request) {
        boolean result = false;
        try {
            request.getSession().removeAttribute("user");
            result = true;
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping("/register")
    @ResponseBody
    public String register(User user){
        return userService.insertUser(user);
    }
}
