package com.epam.ok.service;

import com.epam.ok.dao.Repository;
import com.epam.ok.dao.RepositoryException;
import com.epam.ok.model.News;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
public class NewsServiceImpl implements NewsService {

    @Inject
    private Repository<News> dao;

    @Override
    public List<News> findAll() throws ServiceException {
        try {
            return dao.findAll();
        } catch (RepositoryException e) {
            throw new ServiceException("", e);
        }
    }

    @Override
    public News save(News news) throws ServiceException {
        try {
            return dao.save(news);
        } catch (RepositoryException e) {
            throw new ServiceException("", e);
        }
    }

    @Override
    public void remove(int id) throws ServiceException {
        try {
            dao.remove(find(id));
        } catch (RepositoryException e) {
            throw new ServiceException("", e);
        }
    }

    @Override
    public News find(int id) throws ServiceException {
        try {
            return dao.findById(id);
        } catch (RepositoryException e) {
            throw new ServiceException("", e);
        }
    }
}
