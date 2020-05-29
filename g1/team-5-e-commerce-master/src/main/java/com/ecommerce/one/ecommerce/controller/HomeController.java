package com.ecommerce.one.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("index")
    public String index() {
        return "index";
    }

    @RequestMapping("shop")
    public String shop() {
        return "shop";
    }

    @RequestMapping("about")
    public String about() {
        return "about";
    }

    @RequestMapping("contact")
    public String contact() { return "contact"; }

    @RequestMapping("cart")
    public String cart() { return "cart"; }

    @RequestMapping("login")
    public String login() { return "login"; }

    @RequestMapping("adminLogin")
    public String adminLogin() {return "adminLogin";}

    @RequestMapping("checkout")
    public String checkout() {return "checkout";}

    @RequestMapping("shopSingle")
    public String shopSingle() {return "shopSingle";}

    @RequestMapping("signup")
    public String signup() {return "signup";}

    @RequestMapping("thankYou")
    public String thankYou() {return "thankYou";}
}