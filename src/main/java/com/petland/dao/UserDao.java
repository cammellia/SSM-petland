package com.petland.dao;

import com.petland.entity.User;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @program: PetLand
 * @description:
 * @author: DY
 * @create: 2024-02-07 22:06
 **/
@Repository
public class UserDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    public User getUserByUserName(String userName){
        return  sqlSessionTemplate.selectOne("userMapper.getUserByUserName",userName);
    }
    public void insertUser(User user){
        sqlSessionTemplate.insert("userMapper.getUserByUserName",user);
    }

}
