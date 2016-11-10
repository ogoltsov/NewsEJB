package com.epam.ok.action.comment;

import com.epam.ok.model.Comment;
import com.epam.ok.service.Service;
import com.opensymphony.xwork2.ActionSupport;

import javax.inject.Inject;

public class GetCommentAction extends ActionSupport {

    private static final long serialVersionUID = -2545304408822865197L;

    @Inject
    private Service<Comment> service;

    private Integer newsId;
    private Integer commentId;
    private Comment comment;

    @Override
    public String execute() throws Exception {
        if (commentId != null) {
            comment = service.find(commentId);
        } else {
            comment = new Comment();
        }
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

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }
}
