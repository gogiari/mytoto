package com.toto.mytoto;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.toto.mytoto.menu.mapper.MenuMapper;
import com.toto.mytoto.menu.vo.MenuVo;

@SpringBootTest
public class MenuTest {
    @Autowired
    private MenuMapper menuMapper;

    @Test
    void testGetMenu(){
        List<MenuVo> menuList = menuMapper.getMenuList();
        System.out.println("응답하라" + menuList);
    }
    
}
