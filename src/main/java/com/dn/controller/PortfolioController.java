package com.dn.controller;

import com.dn.model.theme.ThemeService;
import com.dn.model.theme.ThemeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Controller
public class PortfolioController {

    @Autowired
    ThemeService themeService;

    @GetMapping("theme")
    public List<ThemeVO> theme(@RequestBody String n){
        List<ThemeVO> vo = themeService.getTheme();
        return vo;
    }

    @GetMapping("portfolio")
        public String portfolio(){
            return "portfolio";
    }
}
