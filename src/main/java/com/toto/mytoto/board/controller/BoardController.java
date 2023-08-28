package com.toto.mytoto.board.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.toto.mytoto.board.mapper.BoardMapper;
import com.toto.mytoto.board.vo.BoardVo;

@Controller
public class BoardController {
    @Autowired
    BoardMapper boardMapper;

    @RequestMapping("/board/list")
    public ModelAndView list(@RequestParam HashMap<String, Object> map) {
        ModelAndView mv = new ModelAndView("board/list");

        String menu_id = (String) map.get("menu_id");

        List<BoardVo> boardList = boardMapper.getBoardList(menu_id);
        mv.addObject("boardList", boardList);
        return mv;
    }

    @RequestMapping("/board/view")
    public ModelAndView view(String idx) {
        ModelAndView mv = new ModelAndView("board/view");
        System.out.println("누구니"+idx);
        BoardVo boardVo = boardMapper.getBoard(idx);
        mv.addObject("boardVo", boardVo);

        return mv;
    }
}
