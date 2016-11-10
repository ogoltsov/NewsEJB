<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:iterator value="newsList">
    id: <s:property value="id"/> <br>
    title: <s:property value="title"/><br>
    brief: <s:property value="brief"/> <br>
    comments: <s:property value="comments.size"/> <br>

    <s:url action="view" var="aView.action">
        <s:param name="newsId" value="id"/>
    </s:url>
    <s:a href="%{aView.action}">
        <button type="button" class="btn btn-danger">
            VIEW!
        </button>
    </s:a>
    <s:url action="edit" var="aEdit.action">
        <s:param name="newsId" value="id"/>
    </s:url>
    <s:a href="%{aEdit.action}">
        <button type="button" class="btn btn-danger">
            EDIT!
        </button>
    </s:a>
    <s:url action="deleteNews" var="aDelete.action">
        <s:param name="newsId" value="id"/>
    </s:url>
    <s:a href="%{aDelete.action}">
        <button type="button" class="btn btn-danger">
            DELETE!
        </button>
    </s:a>
    <br>
    <hr>
    <br>
</s:iterator>

<s:url action="edit" var="aNews.action"/>
<s:a href="%{aNew.action}">
    <button type="button" class="btn btn-danger">
        ADD news!
    </button>
</s:a>
<s:url action="edit" var="aURL" />
<s:a href="%{aURL}">
    <button type="button" class="btn btn-danger">
        ADD
    </button>
</s:a>


</body>
</html>
