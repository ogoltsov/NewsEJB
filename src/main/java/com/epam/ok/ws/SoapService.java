package com.epam.ok.ws;

import com.epam.ok.dao.RepositoryException;
import com.epam.ok.model.News;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import java.util.List;

@WebService
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT, use= SOAPBinding.Use.LITERAL)
public interface SoapService {

    @WebMethod List<News> getAllNews() throws RepositoryException;

}
