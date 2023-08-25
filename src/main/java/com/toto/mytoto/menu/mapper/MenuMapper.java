package com.toto.mytoto.menu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.toto.mytoto.menu.vo.MenuVo;

@Mapper
public interface MenuMapper {

    List<MenuVo> getMenuList();

}
