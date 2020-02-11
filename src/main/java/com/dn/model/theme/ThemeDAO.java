package com.dn.model.theme;

import com.dn.model.user.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.context.Theme;

import java.util.HashMap;
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
    public void insertTheme(HashMap<String,Object> map){
        ThemeMapper mapper = mybatis.getMapper(ThemeMapper.class);
        mapper.insertTheme(map);

    }
    public ThemeVO checkTheme(ThemeVO vo){
        ThemeMapper mapper = mybatis.getMapper(ThemeMapper.class);
        ThemeVO themeVO = mapper.checkTheme(vo);
        return themeVO;
    }
    public List<ThemeVO> myTheme(String vo){
        ThemeMapper mapper = mybatis.getMapper(ThemeMapper.class);
        List<ThemeVO> themeVO = mapper.myTheme(vo);
        return themeVO;
    }
    public void resetTheme(String vo){
        ThemeMapper mapper = mybatis.getMapper(ThemeMapper.class);
        mapper.resetTheme(vo);
    }
    public void choiceTheme(HashMap<String, Object> vo){
        ThemeMapper mapper = mybatis.getMapper(ThemeMapper.class);
        mapper.choiceTheme(vo);
    }

}
