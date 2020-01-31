package com.dn.model.user;

import java.util.HashMap;
import java.util.List;

public interface UserMapper {

    List<UserVO> getUser();
    void insertUser(HashMap vo);
    UserVO checkUser(String id);
}
