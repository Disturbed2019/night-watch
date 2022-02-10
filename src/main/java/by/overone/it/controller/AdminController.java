package by.overone.it.controller;

import by.overone.it.entity.Film;
import by.overone.it.entity.User;
import by.overone.it.service.FilmService;
import by.overone.it.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private UserService userService;
    @Autowired
    private FilmService filmService;

    @GetMapping("/admin")
    public String showAdminPage() {
        return "admin";
    }

    @GetMapping("/admin/users")
    public String showUsersPageForAdmin(Model model) {
        List<User> userList = userService.getAllUsers();
        model.addAttribute("user", userList);
        return "admin_users";
    }

    @GetMapping("/admin/films")
    public String showFilmsForAdmin(Model model) {
        List<Film> filmList = filmService.getFilmList();
        model.addAttribute("film", filmList);
        return "admin_films";
    }
}
