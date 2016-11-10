package com.epam.ok.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "news")
@NamedQueries(value = {
        @NamedQuery(name = "News.getAll", query = "SELECT e from News e"),
        @NamedQuery(name = "News.getById", query = "SELECT o FROM News o JOIN FETCH o.comments where o.id = :id")
}
)

public class News extends BaseEntity {

    private static final long serialVersionUID = 6339231771359590828L;

    @Column(name = "title")
    private String title;

    @Column(name = "brief")
    private String brief;

    @Column(name = "content")
    private String content;

    @Column(name = "date")
    private Date date;

    @OneToMany(mappedBy = "news", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Comment> comments;

    public News() {
        this.date = new Date();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
