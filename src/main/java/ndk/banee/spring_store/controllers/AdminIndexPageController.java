package ndk.banee.spring_store.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminIndexPageController {

    @GetMapping("/admin")
    public String viewClientIndexPage() {

        return "admin/index";
    }
}
