package com.toto.mytoto.menu.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class MenuVo {
    private String menu_id;
    private String menu_name;
    private int menu_seq;
}
