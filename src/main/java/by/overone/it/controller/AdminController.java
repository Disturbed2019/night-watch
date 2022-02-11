package by.overone.it.controller;

import by.overone.it.entity.Film;
import by.overone.it.entity.User;
import by.overone.it.file_saver.FileSaver;
import by.overone.it.service.FilmService;
import by.overone.it.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

import static org.hibernate.tool.schema.SchemaToolingLogging.LOGGER;

@Controller
@SessionAttributes({"userId", "role"})
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

    //Добавление фильма
    @GetMapping("/admin/add_film")
    public String addFilm(Model model) {
        model.addAttribute("film", new Film());
        return "admin_add_film";
    }

    @PostMapping("/admin/add_film")
    public void saveFilm(@RequestParam("preview") MultipartFile preview, @RequestParam("bg") MultipartFile bg) {
        LOGGER.info(preview.getName());
        LOGGER.info(bg.getName());
    }

    @GetMapping("/admin/films/{id}")
    public String deleteFilm(@PathVariable("id") String id) {
        filmService.deleteById(id);
        return "redirect:/admin/films";
    }

}
