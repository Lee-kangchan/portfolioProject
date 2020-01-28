package com.dn.model.user;

import org.springframework.stereotype.Service;

import java.util.List;
public interface UserService {
    public List<UserVO> getUser();
}
