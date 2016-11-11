<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .news-item {
        padding-top: 15px;
    }
</style>

<s:form action="deleteNews" namespace="/news" theme="simple" commentId="myForm">
    <s:iterator value="newsList">
        <div class="container-fluid news-item">
            <div class="row">
                <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                    <p>
                        <b><s:text name="page.newsList.label.title"/>:</b>
                        <s:property value="title"/>
                    </p>
                    <p>
                        <b><s:text name="page.newsList.label.brief"/>:</b>
                        <s:property value="brief"/>
                    </p>
                    <p>
                        <b><s:text name="page.newsList.label.comments"/>:</b>
                        <s:property value="comments.size"/>
                    </p>
                </div>
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <p>
                        <b><s:text name="page.newsList.label.date"/>:</b>
                        <s:date name="date" format="dd/MM/yyyy"/>
                    </p>
                    <s:url action="view" var="aView.action">
                        <s:param name="newsId" value="id"/>
                    </s:url>
                    <s:a href="%{aView.action}">
                            <s:text name="page.newsList.button.view"/>
                    </s:a>
                    <s:url action="edit" var="aEdit.action">
                        <s:param name="newsId" value="id"/>
                    </s:url>
                    <s:a href="%{aEdit.action}">
                        <s:text name="page.newsList.button.edit"/>
                    </s:a>
                    <s:checkbox name="newsId" fieldValue="%{id}" value="false" required="true"/>
                </div>
            </div>
            <hr>
        </div>
    </s:iterator>
    <div class="container-fluid deleteButton">
        <dov class="row">
            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10 ">
                <div class="errors">
                    <s:if test="hasActionErrors()">
                        <s:actionerror/>
                    </s:if>
                </div>
            </div>
            <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                <button type="submit" class="btn btn-danger">
                    DELETE
                </button>
            </div>
        </dov>
    </div>
</s:form>

<style>
    div.errors {
        color: #960a0a;
    }

    p.title {
        text-align: left;
        font-weight: bold;

    }
</style>