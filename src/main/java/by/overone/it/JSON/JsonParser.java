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

import static org.hibernate.tool.schema.SchemaToolingLogging.LOGGER;

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
                object = (JSONObject) o;
                service.saveFilm(
                        String.valueOf(object.get("category")),
                        String.valueOf(object.get("title")),
                        String.valueOf(object.get("year")),
                        String.valueOf(object.get("bg_img")),
                        String.valueOf(object.get("description")),
                        String.valueOf(object.get("preview_img")),
                        String.valueOf(object.get("trailer_link")),
                        String.valueOf(object.get("rating"))
                );
            }
        }
        LOGGER.info("Inserting completed");
    }
}
