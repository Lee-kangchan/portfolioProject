package com.dn.model.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
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

    @Override
    public void insertUser(HashMap vo) {

        userDAO.insertUser(vo);
    }

    @Override
    public UserVO checkUser(String id) {
        UserVO vo = userDAO.checkUser(id);
        return vo;
    }

}
