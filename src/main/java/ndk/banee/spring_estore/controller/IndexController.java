package ndk.banee.spring_estore.controller;

import ndk.banee.spring_estore.entity.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class IndexController {

    @GetMapping("/")
    public String navigate(Model model, HttpSession session) {
        boolean isLoggedIn;
        try {
            isLoggedIn = (boolean) session.getAttribute("isLoggedIn");
        } catch (NullPointerException exception) {
            isLoggedIn = false;
        }
        model.addAttribute("isLoggedIn", isLoggedIn);
        Customer customer = new Customer();
        if (isLoggedIn) {

            customer = (Customer) session.getAttribute("customer");
        }
        model.addAttribute("customer", customer);
        return "index";
    }
}
