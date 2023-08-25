package com.toto.mytoto;

import java.util.List;
import java.util.Set;

import javax.servlet.ServletContainerInitializer;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import com.toto.mytoto.menu.mapper.MenuMapper;
import com.toto.mytoto.menu.vo.MenuVo;

@Configuration
public class WebConfig implements ServletContainerInitializer {

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

    }
    
}
