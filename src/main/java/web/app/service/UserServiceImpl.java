package web.app.service;

import java.util.List;
import web.app.dao.UserDao;
import web.app.lib.Inject;
import web.app.lib.Service;
import web.app.model.User;

@Service
public class UserServiceImpl implements UserService {
    @Inject
    private UserDao userDao;

    @Override
    public User create(User element) {
        return userDao.save(element);
    }

    @Override
    public User get(Long id) {
        return userDao.get(id);
    }

    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }
}
