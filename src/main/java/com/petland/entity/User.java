package com.petland.entity;

/**
 * @program: PetLand
 * @description:
 * @author: DY
 * @create: 2024-02-07 21:59
 **/
public class User {
    private  int id;
    private  String userName;
    private  String password;
    private  String phone;
    private  String sex;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
}
