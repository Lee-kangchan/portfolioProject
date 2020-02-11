package com.dn.controller;

import com.dn.model.theme.ThemeService;
import com.dn.model.theme.ThemeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;

@Controller
public class ThemeController {

    static final Logger log = Logger.getLogger(String.valueOf(ThemeController.class));

    @Autowired
    ThemeService themeService;

    @GetMapping("/theme")
    public @ResponseBody List<ThemeVO> theme( ){
        List<ThemeVO> vo = themeService.getTheme();
        return vo;
    }
    @PostMapping("/theme/{num}")
    public @ResponseBody String theme(@PathVariable int num, HttpSession session){
        String id = (String) session.getAttribute("id");
        if(id==null){
            return "/login";
        }
        ThemeVO vo = new ThemeVO();
        vo.setTheme_num(num);;
        vo.setUser_id(id);
        ThemeVO T = themeService.checkTheme(vo);
        if(ObjectUtils.isEmpty(T)) {
            log.info(id);
            HashMap<String, Object> map = new HashMap<>();
            map.put("id", id);
            map.put("num", num);
            map.put("theme_check", 0);
            themeService.insertTheme(map);

            log.info(num + "e");

            return "/";
        }
        else{
            return "already";
        }
    }
    @PostMapping("/theme")
    public @ResponseBody List<ThemeVO> theme(HttpSession session){
        String id = (String) session.getAttribute("id");

        return themeService.myTheme(id);
    }
}
