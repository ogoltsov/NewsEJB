package com.epam.ok.ws;

import com.epam.ok.model.News;
import com.epam.ok.service.ServiceException;

import javax.ejb.Local;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlElementWrapper;
import java.util.List;

@WebService
@Local
public interface SoapService<T> {

    @WebMethod(operationName = "getAll")
    @WebResult(name = "item")
    @XmlElementWrapper(name = "List")
    List<T> getAll() throws ServiceException;

    @WebMethod(operationName = "getById")
    @WebResult(name = "item")
    News getById(@WebParam(name = "id") int id) throws ServiceException;

    @WebMethod(operationName = "deleteById")
    @WebResult(name = "isDeleted")
    boolean delete(@WebParam(name = "id") int id) throws ServiceException;

    @WebMethod(operationName = "add")
    @WebResult(name = "isAdded")
    boolean add(@WebParam(name = "item")T t) throws ServiceException;

}
