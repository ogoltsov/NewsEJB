package com.epam.ok.action.news;

import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.epam.ok.service.ServiceException;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;

import javax.inject.Inject;
import java.util.List;

public class GetAllNewsAction extends ActionSupport {

    private static final long serialVersionUID = -4621649599573151569L;
    private static final Logger logger = Logger.getLogger(GetAllNewsAction.class);

    @Inject
    private Service<News> service;
    private List<News> newsList;

    public GetAllNewsAction() {
    }

    @Override
    public String execute() throws Exception {
        logger.info("Get All News execute");
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
            logger.error("Can't get newsList from DB");
        }

    }

    public List<News> getNewsList() {
        return newsList;
    }

}
