package com.epam.ok.service;

import com.epam.ok.model.Comment;

import javax.ejb.Local;

@Local
public interface CommentService extends Service<Comment> {
}
