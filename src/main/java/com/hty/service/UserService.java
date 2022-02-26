package com.hty.service;

import com.hty.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    //根据ID查询
    public User queryUserByID(int id);
    //按照姓名查询
    public User queryUserByName(String name);
    //根据姓名和密码查询
    public User queryUserByNameAndPassword(String name,String password);
    //查询所有用户
    public List<User> queryAllUser();
    //添加用户信息
    public int insertUser(User user);
    //修改用户信息
    public int updateUser(User user);
    //删除用户信息
    public int deleteUser(int id);
}
