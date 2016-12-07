package com.epam.ok.action.news;

import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.opensymphony.xwork2.ActionSupport;

import javax.inject.Inject;

public class SaveNewsAction extends ActionSupport {
    private static final long serialVersionUID = -3737016250619669215L;

    @Inject
    private Service<News> service;
    private Integer newsId;
    private News news;

    @Override
    public String execute() throws Exception {
        news = service.save(news);
        if (newsId == null)
            newsId = news.getId();
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (news.getTitle().length()>100) addActionError("Title must be shorter than 100 characters");
        if (news.getBrief().length()>500) addActionError("Brief must be shorter than 500 characters");
        if (news.getContent().length()>2048) addActionError("Content must be shorter than 2048 characters");
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }
}
