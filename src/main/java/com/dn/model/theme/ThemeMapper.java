package com.dn.model.theme;

import java.util.HashMap;
import java.util.List;

public interface ThemeMapper {
   List<ThemeVO> getTheme();
   void insertTheme(HashMap<String,Object> map);
   ThemeVO checkTheme(ThemeVO vo);
   List<ThemeVO> myTheme(String vo);
   void resetTheme(String vo);
   void choiceTheme(HashMap<String,Object> vo);
}
