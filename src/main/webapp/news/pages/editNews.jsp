<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sd" uri="/struts-dojo-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form theme="simple">
    <%--<s:textfield name="news.commentId" label="ID" value="%{news.commentId}" />--%>
    <s:hidden name="news.id" value="%{news.id}"/>
    <s:hidden name="newsId" value="%{news.id}"/>
    <div class="error">
        <s:if test="hasActionErrors()">
            <s:actionerror/>
        </s:if>
    </div>

    <div class="form-group">

    </div>

    <s:textfield name="news.title" value="%{news.title}" size="100" maxLength="100"
                 cssClass="form-control" label="Title"/>
    <s:textarea name="news.brief" label="Brief" value="%{news.brief}" rows="5" cols="50" cssClass="form-control"/>
    <s:textfield name="news.date" label="date" value="%{news.date}" cssClass="form-control" />

    <%--<sd:datetimepicker label="Select From" name="news.date" displayFormat="MM-dd-yy" value="%{news.date}" cssClass="form-control"/>--%>

    <s:textarea name="news.content" label="Content" value="%{news.content}" rows="10" cols="50"
                cssClass="form-control"/>

    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 offset-xs-9 offset-sm-9 offset-md-9 offset-lg-9">
        <div class="btn-group" role="group" aria-label="Basic example">
            <s:submit cssClass="btn btn-success" value="Save" action="saveNews"/>
            <s:submit cssClass="btn btn-primary" value="Back" action="view"/>
            <s:submit cssClass="btn btn-success" value="Delete" action="deleteNews"/>
        </div>
    </div>

</s:form>

</body>
</html>
