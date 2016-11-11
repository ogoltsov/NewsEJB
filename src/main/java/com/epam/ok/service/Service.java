package com.epam.ok.service;

import javax.ejb.Local;
import javax.ejb.Stateless;
import java.util.List;

@Local
public interface Service<T> {

    List<T> findAll() throws ServiceException;

    T save(T t) throws ServiceException;

    void remove(int id) throws ServiceException;

    T find(int id) throws ServiceException;


}
