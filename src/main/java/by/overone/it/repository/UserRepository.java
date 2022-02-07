package by.overone.it.repository;

import by.overone.it.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface UserRepository  extends JpaRepository<User, String> {

    @Query("from User where userName =:userName")
    User getUserByUserName(@Param("userName") String userName);

}
