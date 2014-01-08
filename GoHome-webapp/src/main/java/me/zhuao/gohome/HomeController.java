package me.zhuao.gohome;

import me.zhuao.gohome.service.RetrieveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
public class HomeController {

    @Autowired
    private RetrieveService retrieveService;

    @RequestMapping("/admin")
    public String adminHome(Principal principal, Model model) {
        model.addAttribute("username", principal.getName());
        return "view.admin";
    }

    @RequestMapping("/find")
    public String find(@RequestParam String from, @RequestParam String to, Model model) {
//        retrieveService.retrieve(from, to);

        model.addAttribute("from", from);
        model.addAttribute("to", to);
        return "view.search";
    }
}
