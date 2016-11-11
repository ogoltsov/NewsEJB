<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<s:form action="deleteNews" namespace="/news" theme="simple" commentId="myForm">
    <s:iterator value="newsList">
        id: <s:property value="id"/> <br>
        title: <s:property value="title"/><br>
        brief: <s:property value="brief"/> <br>
        comments: <s:property value="comments.size"/> <br>
        <s:checkbox name="newsId" fieldValue="%{id}" value="false" required="true"/>

        <s:url action="view" var="aView.action">
            <s:param name="newsId" value="id"/>
        </s:url>
        <s:a href="%{aView.action}">
            <button type="button" class="btn btn-danger">
                <s:text name="page.newsList.button.view"/>
            </button>
        </s:a>
        <s:url action="edit" var="aEdit.action">
            <s:param name="newsId" value="id"/>
        </s:url>
        <s:a href="%{aEdit.action}">
            <button type="button" class="btn btn-danger">
                <s:text name="page.newsList.button.edit"/>
            </button>
        </s:a>
        <br>
        <hr>
        <br>
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