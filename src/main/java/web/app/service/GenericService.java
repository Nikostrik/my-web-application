package web.app.service;

import java.util.List;

public interface GenericService<T> {
    T create(T element);

    T get(Long id);

    List<T> getAll();
}
