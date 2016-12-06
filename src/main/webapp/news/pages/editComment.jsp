<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sd" uri="/struts-dojo-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form theme="simple">
    <s:hidden name="commentId" value="%{comment.id}"/>
    <s:hidden name="newsId" value="%{newsId}"/>
    <div class="error">
        <s:if test="hasActionErrors()">
            <s:actionerror/>
        </s:if>
    </div>
<label for="message">
    Message
</label>
    <s:textarea id="message" name="comment.message" label="Brief" value="%{comment.message}" rows="5" cols="50" cssClass="form-control"/>
    <s:textfield name="comment.date" label="date" value="%{comment.date}" cssClass="form-control" />

    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 offset-xs-9 offset-sm-9 offset-md-9 offset-lg-9">
        <div class="btn-group" role="group" aria-label="Basic example">
            <s:submit cssClass="btn btn-success" value="Save" action="saveComment"/>
            <s:submit cssClass="btn btn-primary" value="Back" action="view"/>
            <s:submit cssClass="btn btn-success" value="Delete" action="deleteComment"/>
        </div>
    </div>

</s:form>

</body>
</html>
