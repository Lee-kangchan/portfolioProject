package com.dn.model.user;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
public interface UserService {
    public List<UserVO> getUser();
    public void insertUser(HashMap vo);
    public UserVO checkUser(String id);
}
