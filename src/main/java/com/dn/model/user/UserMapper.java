package com.dn.model.user;

import java.util.HashMap;
import java.util.List;

public interface UserMapper {

    List<UserVO> getUser();
    void insertUser(HashMap vo);
    UserVO checkUser(String id);
    UserVO informationUser(String id);
    void updateUser(HashMap<String, Object> vo);
}
