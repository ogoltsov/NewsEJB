package com.epam.ok.dao;

import javax.ejb.Local;
import java.util.List;

@Local
public interface Repository<T> {

    List<T> findAll() throws RepositoryException;

    T findById(int id) throws RepositoryException;

    T save(T t) throws RepositoryException;

    void remove(T t) throws RepositoryException;

}
