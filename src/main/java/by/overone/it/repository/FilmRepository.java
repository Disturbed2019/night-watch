package by.overone.it.repository;

import by.overone.it.entity.Film;
import by.overone.it.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public interface FilmRepository extends JpaRepository<Film, String> {

    @Modifying
    @Query("update Film f set f.category=:category where f.id=:id")
    List<Film> updateCategory(@Param("id") String id, @Param("category") String category);

    @Modifying
    @Query("update Film f set f.title=:title where f.id=:id")
    List<Film> updateTitle(@Param("id") String id, @Param("title") String title);

    @Modifying
    @Query("update Film f set f.year=:year where f.id=:id")
    List<Film> updateYear(@Param("id") String id, @Param("year") String year);

    @Modifying
    @Query("update Film f set f.bgImg=:bg_img where f.id=:id")
    List<Film> updateBgImg(@Param("id") String id, @Param("bgImg") String bgImg);

    @Modifying
    @Query("update Film f set f.description=:description where f.id=:id")
    List<Film> updateDescription(@Param("id") String id, @Param("description") String description);

    @Modifying
    @Query("update Film f set f.previewImg=:preview_img where f.id=:id")
    List<Film> updatePreviewImg(@Param("id") String id, @Param("previewImg") String previewImg);

    @Modifying
    @Query("update Film f set f.trailerLink=:trailerLink where f.id=:id")
    List<Film> updateTrailerLink(@Param("id") String id, @Param("trailerLink") String trailerLink);

    @Modifying
    @Query("update Film f set f.rating=:bg_img where f.id=:id")
    List<Film> updateRating(@Param("id") String id, @Param("rating") String rating);
}
