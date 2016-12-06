<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="row">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
                <h5>Title:</h5>
            </div>
            <div class="col-xs-11 col-sm-11 col-md-11 col-lg-11">
                <p><s:property value="news.title"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
                <h5>Date:</h5>
            </div>
            <div class="col-xs-11 col-sm-11 col-md-11 col-lg-11">
                <p><s:property value="news.date"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
                <h5>Brief:</h5>
            </div>
            <div class="col-xs-11 col-sm-11 col-md-11 col-lg-11">
                <p><s:property value="news.brief"/></p>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
                <h5>Content:</h5>
            </div>
            <div class="col-xs-11 col-sm-11 col-md-11 col-lg-11">
                <p><s:property value="news.content"/></p>
            </div>
        </div>

    </div>
</div>

<h3>comments:</h3>
<hr>

<div class="row">
    <div class="container-fluid">
        <s:iterator value="news.comments">
        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                <p><s:property value="message"/></p>
            </div>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <p><s:property value="date"/></p>
                <s:url action="deleteComment" var="cDelete.action">
                    <s:param name="newsId" value="news.id"/>
                    <s:param name="commentId" value="id"/>
                </s:url>
                <s:a href="%{cDelete.action}">
                    <button type="button" class="btn btn-danger">
                        Delete!
                    </button>
                </s:a>
                <s:url action="editComment" var="cEdit.action">
                    <s:param name="newsId" value="news.id"/>
                    <s:param name="commentId" value="id"/>
                </s:url>
                <s:a href="%{cEdit.action}">
                    <button type="button" class="btn btn-danger">
                        Edit!
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
        <div class="offset-xs-8 offset-sm-8 offset-md-8 offset-lg-8 col-xs-4 col-sm-4 col-md-4 col-lg-4">
            <s:url action="editComment" var="cAddComment.action">
                <s:param name="newsId" value="news.id"/>
            </s:url>
            <s:a href="%{cAddComment.action}">
                <button type="button" class="btn btn-danger">
                    Add comment
                </button>
            </s:a>
        </div>
    </div>
</div>


</body>
</html>
