package com.dn.model.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
