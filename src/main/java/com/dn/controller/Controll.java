package com.dn.controller;


import com.dn.model.user.UserService;
import com.dn.model.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.logging.Logger;

@Controller
public class Controll {

    static final Logger log = Logger.getLogger(String.valueOf(Controll.class));
    @Autowired
    UserService userService;

    @RequestMapping(value = "/")
    public String home(Model model){
        model.addAttribute("user",userService.getUser());
        for(UserVO vo : userService.getUser()){
            log.info(vo.getId());
        }
        return "index";

    }
}
