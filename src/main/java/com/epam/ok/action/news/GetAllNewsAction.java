package com.epam.ok.action.news;

import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.epam.ok.service.ServiceException;
import com.opensymphony.xwork2.ActionSupport;

import javax.inject.Inject;
import java.util.List;

public class GetAllNewsAction extends ActionSupport {

    private static final long serialVersionUID = -4621649599573151569L;

    @Inject
    private Service<News> service;
    private List<News> newsList;

    public GetAllNewsAction() {
    }

    @Override
    public String execute() throws Exception {
        newsList = service.findAll();
        if ((newsList == null) || (newsList.size() == 0))
            return NONE;
        else return SUCCESS;
    }

    @Override
    public void validate() {
        try {
            newsList = service.findAll();
        } catch (ServiceException e) {

        }
    }

    public List<News> getNewsList() {
        return newsList;
    }

}
