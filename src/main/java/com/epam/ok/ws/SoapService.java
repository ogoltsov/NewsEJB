package com.epam.ok.ws;

import com.epam.ok.model.News;
import com.epam.ok.service.ServiceException;

import javax.ejb.Local;
import javax.jws.WebService;
import java.util.List;

@WebService
//@Local
public interface SoapService<T> {

    List<T> getAll() throws ServiceException;

    News getById(int id);

    boolean delete(int id);

    boolean add(T t);

}
