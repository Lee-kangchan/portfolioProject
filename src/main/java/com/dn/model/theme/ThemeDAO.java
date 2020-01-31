package com.dn.model.theme;

import com.dn.model.user.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ThemeDAO {

    @Autowired
    SqlSession mybatis;

    public List<ThemeVO> getTheme(){

        ThemeMapper mapper = mybatis.getMapper(ThemeMapper.class);
        List<ThemeVO> vo = (List) mapper.getTheme();
        return vo;
    }
}
