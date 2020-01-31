package com.dn.model.theme;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ThemeService")
public class ThemeServiceImpl implements ThemeService {
    @Autowired
    ThemeDAO themedao;

    @Override
    public List<ThemeVO> getTheme() {
        return themedao.getTheme();
    }
}
