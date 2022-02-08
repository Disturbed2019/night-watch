package by.overone.it.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@NoArgsConstructor
@Getter
public class Film {

    @Id
    @GeneratedValue(generator = "uuid-generator")
    @GenericGenerator(name = "uuid-generator", strategy = "uuid")
    private String id;

    @Setter
    private String category;

    @Setter
    private String title;

    @Setter
    private String year;

    @Setter
    private String bgImg;

    @Setter
    private String description;

    @Setter
    private String previewImg;

    @Setter
    private String trailerLink;

    @Setter
    private String rating;
}
