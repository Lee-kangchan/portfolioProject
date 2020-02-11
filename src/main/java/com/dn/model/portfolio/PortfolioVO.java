package com.dn.model.portfolio;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Setter
@Getter
@ToString
public class PortfolioVO {
    private int num;
    private int recommend;
    private int lookup;
    private String name;
    private String content;
    private String descript;
    private String user_id;


}
