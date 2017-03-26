package com.registerform.controller;

import com.registerform.bean.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
    @RequestMapping(method = RequestMethod.GET)
    public String showForm(ModelMap model) {
        User user = new User();
        model.addAttribute("USER", user);
        return "login";
    }
}
