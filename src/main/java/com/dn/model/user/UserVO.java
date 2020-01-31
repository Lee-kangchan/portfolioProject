package com.dn.model.user;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Data
@Setter
@Getter
@ToString
public class UserVO {
    private String id;

    private String password;
    private String name;
    private String intro;
    private Date secssion;
    private Date deadline;
    private int notOpen;

}
