package com.dn.model.theme;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Data
@ToString
public class ThemeVO {
    private int num;
    private String name;
    private String content;
    private String img;
    private String html;
}
