package by.overone.it.JSON;

import by.overone.it.entity.Film;
import by.overone.it.service.FilmService;
import lombok.SneakyThrows;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.FileReader;

@Component
public class JsonParser {

    @Autowired
    private FilmService service;

    @SneakyThrows
    public void saveJsonFilmsIntoDatabase() {
        String path = "src/main/resources/db.json";
        BufferedReader reader = new BufferedReader(new FileReader(path));
        JSONParser parser = new JSONParser();
        JSONObject object = (JSONObject) parser.parse(reader);
        JSONArray array = (JSONArray) object.get("films");
        Film film;

        if (service.findFirst("horror") == null) {
            for (Object o : array) {
                film = new Film();
                object = (JSONObject) o;
                film.setCategory(String.valueOf(object.get("category")));
                film.setTitle(String.valueOf(object.get("title")));
                film.setYear(String.valueOf(object.get("year")));
                film.setBgImg(String.valueOf(object.get("bg_img")));
                film.setDescription(String.valueOf(object.get("description")));
                film.setPreviewImg(String.valueOf(object.get("preview_img")));
                film.setTrailerLink(String.valueOf(object.get("trailer_link")));
                film.setRating(String.valueOf(object.get("rating")));
                service.saveFilm(film);
            }
        }
    }
}
