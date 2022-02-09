package by.overone.it.controller;

import by.overone.it.entity.Film;
import by.overone.it.service.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class MovieController {

    @Autowired
    private FilmService filmService;

    @GetMapping("/movies")
    public String showMoviePage(Model model) {
        List<Film> filmList = filmService.getFilmList();
        model.addAttribute("filmList", filmList);
        return "movies";
    }

    @GetMapping("/movie-page-{id}")
    public String showMoviePage(@PathVariable("id") String filmId, Model model) {
        Film film = filmService.getFilmById(filmId);
        model.addAttribute("film", film);
        return "movie-page";
    }

//    @GetMapping("/romance")
//    public String showRomancePage(Model model) {
//        List<Film> romanceList = filmService.getRomanceFilms();
//        model.addAttribute("filmList", romanceList);
//        return "movies";
//    }

//    @GetMapping("/drama")
//    public String showDramaPage(Model model) {
//        List<Film> dramaList = filmService.getDramaFilms();
//        model.addAttribute("filmList", dramaList);
//        return "movies";
//    }
//
//    @GetMapping("/historical")
//    public String showRomancePage(Model model) {
//        List<Film> historicalList = filmService.getHistoricalFilms();
//        model.addAttribute("filmList", historicalList);
//        return "movies";
//    }
//
//    @GetMapping("/romance")
//    public String showRomancePage(Model model) {
//        List<Film> romanceList = filmService.getRomanceFilms();
//        model.addAttribute("filmList", romanceList);
//        return "movies";
//    }
//
//    @GetMapping("/romance")
//    public String showRomancePage(Model model) {
//        List<Film> romanceList = filmService.getRomanceFilms();
//        model.addAttribute("filmList", romanceList);
//        return "movies";
//    }
}
