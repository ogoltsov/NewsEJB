<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="row">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                <h5><s:text name="page.newsList.label.title"/>:</h5>
            </div>
            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                <p><s:property value="news.title"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                <h5><s:text name="page.newsList.label.date"/>:</h5>
            </div>
            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                <p><s:date name="news.date" format="dd/MM/yyyy"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                <h5><s:text name="page.newsList.label.brief"/>:</h5>
            </div>
            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                <p><s:property value="news.brief"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                <h5><s:text name="page.newsList.label.content"/>:</h5>
            </div>
            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                <p><s:property value="news.content"/></p>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="container-fluid">
        <div class="offset-xs-8 offset-sm-8 offset-md-8 offset-lg-8 col-xs-4 col-sm-4 col-md-4 col-lg-4">
            <s:url action="edit" var="cEditNews.action">
                <s:param name="newsId" value="news.id"/>
            </s:url>
            <s:a href="%{cEditNews.action}">
                <button type="button" class="btn btn-danger">
                    <s:text name="page.newsList.button.edit"/>
                </button>
            </s:a>
            <s:url action="list" var="list.action"/>
            <s:a href="%{list.action}">
                <button type="button" class="btn btn-danger">
                    <s:text name="page.view.button.back"/>
                </button>
            </s:a>
        </div>
    </div>
</div>

<h3><s:text name="page.newsList.label.comments"/>:</h3>
<hr>

<div class="row">
<div class="container-fluid">
<s:iterator value="news.comments">
    <div class="row">
        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
            <p><s:property value="message"/></p>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
            <p>
                <b><s:text name="page.newsList.label.date"/>: </b>
                <s:date name="date" format="dd/MM/yyyy"/>
            </p>
            <s:url action="deleteComment" var="cDelete.action">
                <s:param name="newsId" value="news.id"/>
                <s:param name="commentId" value="id"/>
            </s:url>
            <s:a href="%{cDelete.action}">
                <button type="button" class="btn btn-danger">
                    <s:text name="page.newsList.button.delete"/>
                </button>
            </s:a>
            <s:url action="editComment" var="cEdit.action">
                <s:param name="newsId" value="news.id"/>
                <s:param name="commentId" value="id"/>
            </s:url>
            <s:a href="%{cEdit.action}">
                <button type="button" class="btn btn-danger">
                    <s:text name="page.newsList.button.edit"/>
                </button>
            </s:a>
        </div>
    </div>
    </div>
    </div>
    <hr>
    <br>
</s:iterator>

<div class="row">
    <div class="container-fluid">
        <div class="offset-xs-9 offset-sm-9 offset-md-9 offset-lg-9 col-xs-3 col-sm-3 col-md-3 col-lg-3">
            <s:url action="editComment" var="cAddComment.action">
                <s:param name="newsId" value="news.id"/>
            </s:url>
            <s:a href="%{cAddComment.action}">
                <button type="button" class="btn btn-danger">
                    <s:text name="page.newsList.button.addComment"/>
                </button>
            </s:a>
        </div>
    </div>
</div>

