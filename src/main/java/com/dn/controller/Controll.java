package com.dn.controller;

import com.dn.model.user.UserService;
import com.dn.model.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

@Controller
public class Controll {

    static final Logger log = Logger.getLogger(String.valueOf(Controll.class));

    @Autowired
    UserService userService;


    //메인 페이지
    @GetMapping(value = "/")
    public String home(Model model){

        return "main";
    }


    //로그인 처리
    @PostMapping(value ="/login")
    public String login(Model model, HttpSession session, @RequestParam("email")String id, @RequestParam("password") String password){

        for(UserVO t : userService.getUser()){
            log.info(t.getId());
            log.info(t.getPassword());

            if(id.equals(t.getId())){
                if(password.equals(t.getPassword())){
                    session.setAttribute("id",t.getId());
                    return "main";
                }
            }
        }
        return "login";
    }

    //회원가입 절차
    @GetMapping(value ="/sign")
    public String sign(Model model){
        return "sign";
    }

    @PostMapping(value="/sign")
    public HashMap<String, Object > sign(@RequestBody HashMap<String, Object> params){

        HashMap<String,Object> map = params;
        log.info(params.toString());
        log.info("Post Sign");
        userService.insertUser(map);
        return map ;
    }
    @PutMapping(value = "/sign/{id}")
        public @ResponseBody String sign(@PathVariable String id){

        log.info(id);
        UserVO vo = userService.checkUser(id+".com");

        if(vo!=null){
            log.info("NO");
            return "NO";

        }
        else{
            log.info("YES");
            return "YES";
        }
    }

}
