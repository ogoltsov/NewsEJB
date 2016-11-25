package com.epam.ok.dao;

import com.epam.ok.model.Comment;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Stateless
public class CommentRepository implements Repository<Comment> {

    @PersistenceContext
    private EntityManager em;

    @Override
    @Deprecated
    public List<Comment> findAll() throws RepositoryException {
        throw new UnsupportedOperationException();
    }

    @Override
    public Comment findById(int id) throws RepositoryException {
        return em.find(Comment.class, id);
    }

    @Override
    public Comment save(Comment comment) throws RepositoryException {
        if (comment.getId() == null) {
            em.persist(comment);
        } else {
            comment = em.merge(comment);
        }
        return comment;
    }

    @Override
    public void remove(Comment comment) throws RepositoryException {
        em.remove(comment);
    }
}
