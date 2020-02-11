package com.dn.model.theme;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("ThemeService")
public class ThemeServiceImpl implements ThemeService {
    @Autowired
    ThemeDAO themedao;

    @Override
    public List<ThemeVO> getTheme() {
        return themedao.getTheme();
    }

    @Override
    public void insertTheme(HashMap<String,Object> map) {
        themedao.insertTheme(map);
    }

    @Override
    public ThemeVO checkTheme(ThemeVO vo) {
        return themedao.checkTheme(vo);
    }

    @Override
    public List<ThemeVO> myTheme(String vo) {
        return themedao.myTheme(vo);
    }

    @Override
    public void resetTheme(String vo) {

        themedao.resetTheme(vo);
    }

    @Override
    public void choiceTheme(HashMap<String, Object> vo) {
        themedao.choiceTheme(vo);
    }
}
