package web.app.dao;

import java.util.List;
import web.app.model.User;

public interface UserDao {
    User save(User user);

    User get(Long id);

    List<User> getAll();
}
