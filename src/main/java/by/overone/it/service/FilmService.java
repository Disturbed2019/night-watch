package by.overone.it.service;

import by.overone.it.entity.Film;
import by.overone.it.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FilmService {

    @Autowired
    FilmRepository filmRepository;

    public void saveFilm(Film film) {
        filmRepository.save(film);
    }

    public Film findFirst(String category) {
        return filmRepository.findFirstByCategory(category);
    }

    public void deleteFilm(Film film) {
        filmRepository.delete(film);
    }

    public void updateCategoryFilm(String id, String category) {
        filmRepository.updateCategory(id, category);
    }

    public  void updateTitleFilm(String id, String title) {
        filmRepository.updateTitle(id, title);
    }

    public  void updateYearFilm(String id, String year) {
        filmRepository.updateYear(id, year);
    }

    public  void updateBgImgFilm(String id, String bgImg) {
        filmRepository.updateBgImg(id, bgImg);
    }

    public  void updateDescriptionFilm(String id, String description) {
        filmRepository.updateDescription(id, description);
    }

    public  void updatePreviewImgFilm(String id, String previewImg) {
        filmRepository.updatePreviewImg(id, previewImg);
    }

    public  void updateTrailerLinkFilm(String id, String trailerLink) {
        filmRepository.updateTrailerLink(id, trailerLink);
    }

    public  void updateRatingFilm(String id, String rating) {
        filmRepository.updateRating(id, rating);
    }

    public List<Film> romanceList() {
        return filmRepository.getRomanceFilms();
    }

    public List<Film> historicalList() {
        return filmRepository.getHistoricalFilms();
    }

    public List<Film> dramaList() {
        return filmRepository.getDramaFilms();
    }

    public List<Film> sciFiList() {
        return filmRepository.getSciFiFilms();
    }

    public List<Film> actionList() {
        return filmRepository.getActionFilms();
    }

    public List<Film> comedyList() {
        return filmRepository.getComedyFilms();
    }

    public List<Film> horrorList() {
        return filmRepository.getHorrorFilms();
    }
}
