package com.epam.ok.service;

import com.epam.ok.dao.Repository;
import com.epam.ok.dao.RepositoryException;
import com.epam.ok.model.Comment;

import javax.ejb.Stateless;
import javax.inject.Inject;
import java.util.List;

@Stateless
public class CommentServiceImpl implements CommentService {

    @Inject
    private Repository<Comment> repository;

    @Override
    @Deprecated
    public List<Comment> findAll() throws ServiceException {
        throw new UnsupportedOperationException();
    }

    @Override
    public Comment save(Comment comment) throws ServiceException {
        try {
            return repository.save(comment);
        } catch (RepositoryException e) {
            throw new ServiceException("", e);
        }
    }

    @Override
    public void remove(int id) throws ServiceException {
        try {
            Comment comment = find(id);
            comment.setNews(null);
            repository.remove(comment);
        } catch (RepositoryException e) {
            throw new ServiceException("", e);
        }
    }

    @Override
    public Comment find(int id) throws ServiceException {
        try {
            return repository.findById(id);
        } catch (RepositoryException e) {
            throw new ServiceException("", e);
        }
    }
}
