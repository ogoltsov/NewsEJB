package com.epam.ok.ws;

import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.epam.ok.service.ServiceException;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import java.util.List;

@Stateless(name = "NewsService")
@WebService(name = "NewsService",
        portName = "NewsServicePort")
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT,
        use = SOAPBinding.Use.LITERAL,
        parameterStyle = SOAPBinding.ParameterStyle.WRAPPED)
public class NewsSoapServiceImpl implements NewsSoapService {

    @Inject
    private Service<News> service;

    @Override
    public List<News> getAll() throws ServiceException {
        return service.findAll();
    }

    @Override
    public News getById(int id) {
        return null;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public boolean add(News news) {
        return false;
    }
}
