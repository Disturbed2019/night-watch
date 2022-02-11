package by.overone.it.file_saver;

import lombok.SneakyThrows;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Path;

public class FileSaver {

    @SneakyThrows
    public static void saveImage(MultipartFile img) {
        Path path = Path.of("webapp", "images");
        img.transferTo(path);
    }
}
