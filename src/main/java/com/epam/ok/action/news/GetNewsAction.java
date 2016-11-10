package com.epam.ok.action.news;

import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.opensymphony.xwork2.ActionSupport;

import javax.inject.Inject;

public class GetNewsAction extends ActionSupport {

    private static final long serialVersionUID = -4805272436951921661L;

    @Inject
    private Service<News> service;

    private Integer newsId;
    private News news;

    @Override
    public String execute() throws Exception {
        if (newsId != null)
            news = service.find(newsId);
        else news = new News();
        
        return SUCCESS;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }
}
