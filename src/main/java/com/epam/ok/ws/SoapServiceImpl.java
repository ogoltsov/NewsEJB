package com.epam.ok.ws;


import com.epam.ok.dao.Repository;
import com.epam.ok.dao.RepositoryException;
import com.epam.ok.model.News;
import com.opensymphony.xwork2.inject.Inject;

import javax.jws.WebService;
import java.util.List;

@WebService(endpointInterface = "com.epam.ok.ws.SoapService")
public class SoapServiceImpl implements SoapService {

    @Inject
    private Repository<News> dao;

    @Override
    public List<News> getAllNews() throws RepositoryException {
        return dao.findAll();
    }
}
