package com.dn.controller;

import com.dn.model.portfolio.PortfolioService;
import com.dn.model.theme.ThemeService;
import com.dn.model.user.UserService;
import com.sun.deploy.net.HttpResponse;
import org.apache.commons.fileupload.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;
import java.util.logging.Logger;

@Controller
public class PortfolioController {

    static final Logger log = Logger.getLogger(String.valueOf(PortfolioController.class));

    @Autowired
    UserService userService;

    @Autowired
    ThemeService themeService;
    @Autowired
    PortfolioService portfolioService;

    @GetMapping("portfolio")
    public String portfolio(Model model, HttpSession session){
        String id = (String) session.getAttribute("id");
        if(id==null){
            return "/login";
        }
        model.addAttribute("getPortfolio",portfolioService.getPortfolio(id));
        model.addAttribute("getUser",userService.informationUser(id));
        return userService.informationUser(id).getHtml();

    }
    @PostMapping("/information")
    public String information(@RequestParam HashMap<String, Object> map  , HttpSession session){

        String id = (String) session.getAttribute("id");
        map.put("id",id);
        log.info(map.toString());
        userService.updateUser(map);

        return "redirect:portfolio";
    }
    @GetMapping("change")
    public String changePortfolio(Model model, HttpSession session, @RequestParam int num)
    {
        String id = (String)session.getAttribute("id");
        HashMap<String,Object> map= new HashMap<>();
        map.put("id", id);
        map.put("num", num);
        themeService.resetTheme(id);
        themeService.choiceTheme(map);

        return "redirect:portfolio";
    }

    @PostMapping("/image")
    @ResponseBody
    public String imageUpload(@RequestParam("file") MultipartFile file) {
        log.info(file.getOriginalFilename());
        log.info("" + file.getSize());
        return saveFile(file);
    }

    private String saveFile(MultipartFile file){

        String UPLOAD_PATH = "C:\\Users\\user\\IdeaProjects\\Mainproject\\web\\resources\\upload";
        UUID uuid = UUID.randomUUID();
        String saveName = uuid + "_" + file.getOriginalFilename();

        log.info("saveName:{}"+saveName);

        File savefile = new File(UPLOAD_PATH,saveName);

        try{
            file.transferTo(savefile);
        } catch (IOException e){
            e.printStackTrace();
            return null;
        }
        return saveName;
    }

}



