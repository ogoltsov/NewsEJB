package com.epam.ok.action.comment;

import com.epam.ok.model.Comment;
import com.epam.ok.model.News;
import com.epam.ok.service.Service;
import com.opensymphony.xwork2.ActionSupport;

import javax.inject.Inject;

public class SaveCommentAction extends ActionSupport {

    private static final long serialVersionUID = -4287568831136693945L;

    @Inject
    private Service<Comment> commentService;
    @Inject
    private Service<News> newsService;



    private Integer newsId;
    private Comment comment;

    @Override
    public String execute() throws Exception {
        System.out.println("FUCL!");
        News news = newsService.find(newsId);
        comment.setNews(news);
        commentService.save(comment);
        return SUCCESS;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }
}
