package com.epam.ok.action.news;

import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.log4j.Logger;

import javax.inject.Inject;
import java.util.Arrays;

import static com.opensymphony.xwork2.Action.SUCCESS;

public class DeleteNewsAction extends ActionSupport {

    private static final long serialVersionUID = 5626842466111569355L;
    private static final Logger logger = Logger.getLogger(DeleteNewsAction.class);
    @Inject
    private Service<News> service;
    private Integer[] newsId;

    @Override
    public String execute() throws Exception {
        logger.info("Delete newsAction: " + Arrays.toString(newsId));
        if (newsId != null) {
            for (Integer id : newsId) {
                service.remove(id);
            }
        }
        return SUCCESS;
    }

    @Override
    public void validate() {

        if ((newsId == null) || (newsId.length == 0)) {
            logger.info("DeleteNews validation failed");
            addActionError("Select items for delete");
        }
    }

    public Integer[] getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer[] newsId) {
        this.newsId = newsId;
    }
}
