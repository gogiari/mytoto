package com.toto.mytoto.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.toto.mytoto.board.vo.BoardVo;

@Mapper
public interface BoardMapper {

    List<BoardVo> getBoardList(String menu_id);

    BoardVo getBoard(String idx);

}
