package com.epam.ok.action.news;

import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.opensymphony.xwork2.ActionSupport;

import javax.inject.Inject;

public class DeleteNewsAction extends ActionSupport {

    private static final long serialVersionUID = 5626842466111569355L;

    @Inject
    private Service<News> service;
    private Integer[] newsId;

    @Override
    public String execute() throws Exception {
        if ((newsId != null) || (newsId.length != 0)) {
            for (Integer id : newsId) {
                service.remove(id);
                System.out.println("Remove news with id:" + id);
            }
        }
        return SUCCESS;
    }

    public Integer[] getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer[] newsId) {
        this.newsId = newsId;
    }
}
