package com.toto.mytoto;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.toto.mytoto.menu.mapper.MenuMapper;
import com.toto.mytoto.menu.vo.MenuVo;

@Component
public class HeaderDataInterceptor implements HandlerInterceptor {

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        if (modelAndView != null) {
            List<MenuVo> menuList = menuMapper.getMenuList();
            modelAndView.addObject("menuList", menuList);
        }
    }
}