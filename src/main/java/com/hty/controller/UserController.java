package com.hty.controller;

import com.hty.pojo.User;
import com.hty.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserServiceImpl userService;

    //用户登陆
    @RequestMapping("/login")
    public String login(String userName, String userPassword, Model model){
        User user = userService.queryUserByNameAndPassword(userName, userPassword);

        if(user == null){
            model.addAttribute("error","用户名或者密码错误");
            model.addAttribute("userName",userName);
            return "forward:/login.jsp";
        }
        return "index";
    }

    //用户注册
    @RequestMapping("/regist")
    public String regist(User user){
        userService.insertUser(user);
        return "forward:/login.jsp";
    }

    //转到登陆管理员页面
    @RequestMapping("/toAdminLogin")
    public String toAdminLogin(){
        return "adminlogin";
    }

    //登陆管理员页面
    @RequestMapping("/adminLogin")
    public String adminLogin(String userName, String userPassword, Model model){
        if(!(userName.equals("admin") && userPassword.equals("admin"))){
            model.addAttribute("error","用户名或者密码错误");
            return "adminlogin";
        }
        return "forward:/user/allUser";
    }

    //查询所有用户
    @RequestMapping("/allUser")
    public String allUser(Model model){
        List<User> users = userService.queryAllUser();
        model.addAttribute("users",users);
        return "admin";
    }

    //转到修改用户信息界面
    @RequestMapping("/toUpdateUser")
    public String toUpdateUser(int id,Model model){
        User user = userService.queryUserByID(id);
        model.addAttribute("user",user);
        return "updateuser";
    }

    //修改用户信息
    @RequestMapping("/updateUser")
    public String updateUser(User user){
        userService.updateUser(user);
        return "forward:/user/allUser";
    }

    //删除用户
    @RequestMapping("deleteUser")
    public String deleteUser(int id){
        userService.deleteUser(id);
        return "forward:/user/allUser";
    }

    //查询用户信息
    @RequestMapping("/queryUser")
    public String queryUser(String userName,Model model){
        User user = userService.queryUserByName(userName);
        List<User> users = new ArrayList<>();
        users.add(user);

        if(user == null){
            users = userService.queryAllUser();
            model.addAttribute("error","用户信息不存在");
        }

        model.addAttribute("users",users);
        return "admin";
    }
}
