package com.epam.ok.dao;

import com.epam.ok.model.News;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Stateless
public class NewsRepository implements Repository<News> {

    @PersistenceContext
    private EntityManager em;

    @Override
    @Transactional
    public List<News> findAll() throws RepositoryException {
        return em.createNamedQuery("News.getAll", News.class).getResultList();
    }

    @Override
    @Transactional
    public News findById(int id) throws RepositoryException {
//        return em.createNamedQuery("News.getById", News.class).setParameter("id", id).getResultList().get(0);
        return em.find(News.class, id);
    }

    @Override
    @Transactional
    public News save(News news) throws RepositoryException {
        if (news.getId() == null) {
            em.persist(news);
        } else {
            em.merge(news);
        }
        return news;
    }

    @Override
    @Transactional
    public void remove(News news) throws RepositoryException {
        em.remove(news);
    }
}
