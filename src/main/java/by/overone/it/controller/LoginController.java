package by.overone.it.controller;

import by.overone.it.entity.User;
import by.overone.it.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @GetMapping("/login_form")
    public String login(Model model) {
        model.addAttribute("userLoginForm", new User());
        return "login";
    }

    @PostMapping("/login_form")
    public String login(@ModelAttribute("userLoginForm") @Valid User userLoginForm, BindingResult bindingResult,
                        Model model) {
        if (bindingResult.hasErrors()) {
            return "login";
        }

        if (!userLoginForm.getPassword().equals(userLoginForm.getPassword())) {
            model.addAttribute("passwordLoginError", "Неверный пароль");
            return "login";
        }

        return "index";
    }

}
