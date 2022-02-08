package by.overone.it.JSON;

import by.overone.it.entity.Film;
import by.overone.it.service.FilmService;
import lombok.SneakyThrows;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.BufferedReader;
import java.io.FileReader;

public class JsonParser {

    @Autowired
    private FilmService service;

    @SneakyThrows
    public void saveJsonFilmsIntoDatabase() {
        BufferedReader reader = new BufferedReader(new FileReader("db.json"));
        JSONParser parser = new JSONParser();
        JSONObject object = (JSONObject) parser.parse(reader);
        JSONArray array = (JSONArray) object.get("films");
        Film film = new Film();

        for (int i = 0; i <= array.size(); i++) {
            object = (JSONObject) array.get(i);
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
