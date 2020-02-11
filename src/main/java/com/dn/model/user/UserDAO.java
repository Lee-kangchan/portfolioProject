package com.dn.model.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class UserDAO {

    @Autowired
    private SqlSession mybatis;

    public List<UserVO> getUser(){

        UserMapper mapper = mybatis.getMapper(UserMapper.class);
        List<UserVO> userVO = mapper.getUser();

        return userVO;
    }
    public void insertUser(HashMap vo){

        UserMapper mapper = mybatis.getMapper(UserMapper.class);
        mapper.insertUser(vo);
    }
    public UserVO checkUser(String id){
        UserMapper mapper = mybatis.getMapper(UserMapper.class);
        UserVO userVO = mapper.checkUser(id);
        return userVO;
    }
    public UserVO informationUser(String id){
        UserMapper mapper = mybatis.getMapper(UserMapper.class);
        UserVO userVO = mapper.informationUser(id);
        return userVO;
    }
    public void updateUser(HashMap<String,Object> vo){
        UserMapper mapper = mybatis.getMapper(UserMapper.class);
        mapper.updateUser(vo);
    }
}
