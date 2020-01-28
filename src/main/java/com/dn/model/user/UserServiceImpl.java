package com.dn.model.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDAO;


    @Override
    public List<UserVO> getUser() {
        List<UserVO> vo = userDAO.getUser();
        return vo;
    }
}
