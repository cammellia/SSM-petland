package com.petland.service.Impl;

import com.petland.dao.UserDao;
import com.petland.entity.User;
import com.petland.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: PetLand
 * @description:
 * @author: DY
 * @create: 2024-02-07 22:13
 **/
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public boolean login(User user, HttpServletRequest request) {
        User user1 = userDao.getUserByUserName(user.getUserName());
        if (user1 != null) {
            if (user1.getPassword().equals(user.getPassword())) {
                //将用户信息保存到Session
                request.getSession().setAttribute("user", user1);
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
    public String insertUser(User user){
        userDao.insertUser(user);
        return "success";
    }
}

