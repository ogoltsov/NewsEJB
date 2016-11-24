package com.epam.ok.service;

import com.epam.ok.model.News;

import javax.ejb.Local;

@Local
public interface NewsService extends Service<News> {
}
