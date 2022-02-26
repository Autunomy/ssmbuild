package com.hty.service;

import com.hty.dao.UserMapper;
import com.hty.pojo.User;

import java.util.List;

public class UserServiceImpl implements UserService{
    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User queryUserByID(int id) {
        return userMapper.queryUserByID(id);
    }

    @Override
    public User queryUserByName(String name) {
        return userMapper.queryUserByName(name);
    }

    @Override
    public User queryUserByNameAndPassword(String name, String password) {
        return userMapper.queryUserByNameAndPassword(name,password);
    }

    @Override
    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    @Override
    public int insertUser(User user) {
        return userMapper.insertUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int deleteUser(int id) {
        return userMapper.deleteUser(id);
    }
}
