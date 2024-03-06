package com.petland.service;

import com.petland.entity.User;

import javax.servlet.http.HttpServletRequest;

public interface UserService {
    boolean login(User user, HttpServletRequest request);
    String insertUser(User user);
}

