package com.dn.model.theme;

import java.util.HashMap;
import java.util.List;

public interface ThemeService {
    public List<ThemeVO> getTheme();
    public void insertTheme(HashMap<String,Object> map);
    public ThemeVO checkTheme(ThemeVO vo);
    public List<ThemeVO> myTheme(String vo);
    public void resetTheme(String vo);
    public void choiceTheme(HashMap<String, Object> vo);
}
