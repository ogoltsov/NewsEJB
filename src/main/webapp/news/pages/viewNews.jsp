<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>id: <s:property value="news.id"/></p>
<p>title: <s:property value="news.title"/></p>
<p>brief: <s:property value="news.brief"/></p>
<p>date: <s:property value="news.date"/></p>
<p>coments: <s:property value="news.comments.size"/></p>

<h3>comments:</h3>
<hr>
<s:iterator value="news.comments">
    <p>id: <s:property value="id"/></p>
    <p>date: <s:property value="date"/></p>
    <p>message: <s:property value="message"/></p>
    <br>

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

    <hr>
    <br>
</s:iterator>

<s:url action="editComment" var="cAddComment.action">
    <s:param name="newsId" value="news.id"/>
</s:url>
<s:a href="%{cAddComment.action}">
    <button type="button" class="btn btn-danger">
        Add comment!
    </button>
</s:a>

</body>
</html>
