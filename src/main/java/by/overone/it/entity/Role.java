package by.overone.it.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import javax.persistence.*;

@Entity
@NoArgsConstructor
@Table(name = "t_role")
@Getter
public class Role implements GrantedAuthority {

    @Id
    @Column(name = "id")
    private String id;

    @Setter
    @Column(name = "name")
    private String name;

    @Setter
    @Transient
    @OneToOne(mappedBy = "roles")
    private User users;

    public Role(String  id) {
        this.id = id;
    }

    public Role(String id, String name) {
        this.id = id;
        this.name = name;
    }

    @Override
    public String getAuthority() {
        return getName();
    }
}
