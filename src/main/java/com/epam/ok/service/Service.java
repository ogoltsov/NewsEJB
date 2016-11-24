package com.epam.ok.service;

import java.io.Serializable;
import java.util.List;

public interface Service<T> extends Serializable {

    List<T> findAll() throws ServiceException;

    T save(T t) throws ServiceException;

    void remove(int id) throws ServiceException;

    T find(int id) throws ServiceException;
}
