package com.epam.ok.model;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlTransient;
import java.util.Date;

@Entity
@Table(name = "comments")
public class Comment extends BaseEntity {
    private static final long serialVersionUID = -6215908653394966038L;

    @Column(name = "message")
    private String message;

    @Column(name = "published_date")
    private Date date;

    @ManyToOne
    @JoinColumn(name = "news_id")
    private News news;

    public Comment() {
        this.date = new Date();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @XmlTransient
    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }
}
