package com.toto.mytoto.menu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.toto.mytoto.menu.mapper.MenuMapper;
import com.toto.mytoto.menu.vo.MenuVo;

@Controller
public class MenuController {
    @Autowired
    private MenuMapper menuMapper;

    public ModelAndView list(){
        ModelAndView mv = new ModelAndView();
        List<MenuVo> menuList = menuMapper.getMenuList();
        return mv;
    }
    
}
