package com.toto.mytoto.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.toto.mytoto.user.vo.UserVo;

@Mapper
public interface UserMapper {

    List<UserVo> getUserList();

}
