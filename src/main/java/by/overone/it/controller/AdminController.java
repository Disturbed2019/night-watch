package by.overone.it.controller;

import by.overone.it.entity.Film;
import by.overone.it.entity.User;
import by.overone.it.service.FilmService;
import by.overone.it.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import static org.hibernate.tool.schema.SchemaToolingLogging.LOGGER;

@Controller
@SessionAttributes({"userId", "role"})
public class AdminController {

    public static String uploadDirectoryPosters = System.getProperty("user.dir") + "/src/main/webapp/images/posters";
    public static String uploadDirectoryBackground = System.getProperty("user.dir") + "/src/main/webapp/images/backgrounds";

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
    public String saveFilm(@RequestParam("preview") MultipartFile preview, @RequestParam("bg_img") MultipartFile bg,
                           @RequestParam("category") String category, @RequestParam("title") String title,
                           @RequestParam("year") String year, @RequestParam("description") String description,
                           @RequestParam("trailerLink") String trailerLink, @RequestParam("rating") String rating,
                           @ModelAttribute(name = "film") Film film) {
        LOGGER.info(preview.getName());
        LOGGER.info(bg.getName());
        StringBuilder stringBuilder = new StringBuilder();
        Path nameAndPathOfPosters = Paths.get(uploadDirectoryPosters, preview.getOriginalFilename());
        Path nameAndPathOfBackground = Paths.get(uploadDirectoryBackground, bg.getOriginalFilename());
        stringBuilder.append(preview.getOriginalFilename() + " ");
        stringBuilder.append(bg.getOriginalFilename() + " ");
        try {
            Files.write(nameAndPathOfPosters, preview.getBytes());
            Files.write(nameAndPathOfBackground, bg.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        filmService.saveFilm(category, title, year, "./images/posters/" + preview.getOriginalFilename(),
                description, "./images/backgrounds/" + bg.getOriginalFilename(), trailerLink, rating);
        return "admin";
    }

    @GetMapping("/admin/films/{id}")
    public String deleteFilm(@PathVariable("id") String id) {
        filmService.deleteById(id);
        return "redirect:/admin/films";
    }
}
