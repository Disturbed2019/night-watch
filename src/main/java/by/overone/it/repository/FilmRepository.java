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
    List<Film> updateCategory(@Param("category") String id, @Param("category") String category);

    @Modifying
    @Query("update Film f set f.title=:title where f.id=:id")
    List<Film> updateTitle(@Param("category") String id, @Param("title") String title);

    @Modifying
    @Query("update Film f set f.description=:description where f.id=:id")
    List<Film> updateDescription(@Param("category") String id, @Param("description") String description);

    @Modifying
    @Query("update Film f set f.preview_img=:preview_img where f.id=:id")
    List<Film> updatePreviewImg(@Param("category") String id, @Param("preview_img") String preview_img);

    @Modifying
    @Query("update Film f set f.trailer_link=:trailer_link where f.id=:id")
    List<Film> updateTrailerLink(@Param("category") String id, @Param("trailer_link") String trailer_link);
}
