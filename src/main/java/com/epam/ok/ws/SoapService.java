package com.epam.ok.ws;

import com.epam.ok.model.News;
import com.epam.ok.service.ServiceException;

import javax.jws.WebService;

@WebService
//@Local
public interface SoapService<T> {

    News[] getAll() throws ServiceException;

    News getById(int id) throws ServiceException;

    boolean delete(int id);

    boolean add(T t) throws ServiceException;

}
