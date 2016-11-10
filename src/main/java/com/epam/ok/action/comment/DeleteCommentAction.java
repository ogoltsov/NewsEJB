package com.epam.ok.action.comment;

import com.epam.ok.model.Comment;
import com.epam.ok.service.Service;
import com.opensymphony.xwork2.ActionSupport;

import javax.inject.Inject;

public class DeleteCommentAction extends ActionSupport {
    private static final long serialVersionUID = 7440669203790262942L;

    private Integer newsId;
    private Integer commentId;

    @Inject
    private Service<Comment> service;

    @Override
    public String execute() throws Exception {
        service.remove(commentId);
        return SUCCESS;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }
}
