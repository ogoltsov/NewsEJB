<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sd" uri="/struts-dojo-tags" %>

<s:form theme="simple">
    <s:hidden name="commentId" value="%{comment.id}"/>
    <s:hidden name="comment.id" value="%{comment.id}"/>
    <s:hidden name="newsId" value="%{newsId}"/>
    <div class="error">
        <s:if test="hasActionErrors()">
            <s:actionerror/>
        </s:if>
    </div>
    <div class="form-group row">
        <label for="message-text-input" class="col-xs-2 col-sm-2 col-md-2 col-lg-2 col-form-label">
            <s:text name="page.comment.message"/>
        </label>
        <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
            <s:textarea name="comment.message" label="Brief" value="%{comment.message}" rows="5" cols="50"
                        cssClass="form-control" id="message-text-input"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="date-text-input" class="col-xs-2 col-sm-2 col-md-2 col-lg-2 col-form-label">
            <s:text name="page.newsList.label.date"/>
        </label>
        <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
            <s:date name="comment.date" format="dd/MM/yyyy" var="date"/>
            <s:textfield name="comment.date" label="date" value="%{date}" type="date"
                         id="date-text-input" cssClass="form-control"/>
        </div>
    </div>

    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 offset-xs-9 offset-sm-9 offset-md-9 offset-lg-9">
        <div class="btn-group" role="group" aria-label="Basic example">
            <s:submit cssClass="btn btn-success" value="Save" action="saveComment"/>
            <s:submit cssClass="btn btn-primary" value="Back" action="view"/>
            <s:submit cssClass="btn btn-success" value="Delete" action="deleteComment"/>
        </div>
    </div>
</s:form>