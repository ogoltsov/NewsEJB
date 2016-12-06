package com.epam.ok.ws;

import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.epam.ok.service.ServiceException;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import java.util.List;

@Stateless(name = "NewsService")
@WebService(name = "NewsService",
        portName = "NewsServicePort",
        targetNamespace = "https://epam.com.ok.ws/NewsSoapService")
@SOAPBinding(style = SOAPBinding.Style.DOCUMENT,
        use = SOAPBinding.Use.LITERAL,
        parameterStyle = SOAPBinding.ParameterStyle.WRAPPED)
public class NewsSoapServiceImpl implements SoapService<News> {

    @Inject
    private Service<News> service;

    @Override
    public List<News> getAll() throws ServiceException {
        List<News> newsList = service.findAll();
        return newsList;
    }

    @Override
    public News getById(int id) throws ServiceException {
        return service.find(id);
    }

    @Override
    public boolean delete(int id) throws ServiceException {
        service.remove(id);
        return service.find(id) == null;
    }

    @Override
    public boolean add(News news) throws ServiceException {
        News savedNews = service.save(news);
        return savedNews.equals(service.find(savedNews.getId()));
    }
}
