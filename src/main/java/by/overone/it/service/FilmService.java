package by.overone.it.service;

import by.overone.it.entity.Film;
import by.overone.it.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FilmService {

    @Autowired
    FilmRepository filmRepository;

    public void saveFilm(Film film) {
        filmRepository.save(film);
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

    public  void updateDescriptionFilm(String id, String description) {
        filmRepository.updateTitle(id, description);
    }

    public  void updatePreviewImgFilm(String id, String previewImg) {
        filmRepository.updateTitle(id, previewImg);
    }

    public  void updateTrailerLinkFilm(String id, String trailerLinkFilm) {
        filmRepository.updateTitle(id, trailerLinkFilm);
    }
}
