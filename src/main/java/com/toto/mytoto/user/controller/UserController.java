package com.toto.mytoto.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.toto.mytoto.user.mapper.UserMapper;
import com.toto.mytoto.user.vo.UserVo;

@Controller
public class UserController {
    @Autowired
    UserMapper userMapper;
    
    @RequestMapping("/user/list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView("user/list");
        List<UserVo> userList = userMapper.getUserList();
        mv.addObject("userList", userList);
        return mv;
    }
    
}
