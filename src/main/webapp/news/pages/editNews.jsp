<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sd" uri="/struts-dojo-tags" %>
<s:form theme="simple">
    <s:hidden name="news.id" value="%{news.id}"/>
    <s:hidden name="newsId" value="%{news.id}"/>
    <div class="error">
        <s:if test="hasActionErrors()">
            <s:actionerror/>
        </s:if>
    </div>
    <div class="form-group row">
        <label for="title-text-input" class="col-xs-2 col-sm-2 col-md-1 col-lg-1 col-form-label">
            <s:text name="page.main.newsPortal.title"/>
        </label>
        <div class="col-xs-10 col-sm-10 col-md-11 col-lg-11">
            <s:textfield name="news.title" label="title" value="%{news.title}" rows="5" cols="50"
                        cssClass="form-control" id="title-text-input"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="brief-text-input" class="col-xs-2 col-sm-2 col-md-1 col-lg-1 col-form-label">
            <s:text name="page.newsList.label.brief"/>
        </label>
        <div class="col-xs-10 col-sm-10 col-md-11 col-lg-11">
            <s:textarea name="news.brief" label="brief" value="%{news.brief}" rows="5" cols="50"
                         cssClass="form-control" id="brief-text-input"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="date-text-input" class="col-xs-2 col-sm-2 col-md-1 col-lg-1 col-form-label">
            <s:text name="page.newsList.label.date"/>
        </label>
        <div class="col-xs-10 col-sm-10 col-md-11 col-lg-11">
            <s:date name="news.date" format="dd/MM/yyyy" var="date"/>
            <s:textfield name="news.date" label="brief" value="%{date}" rows="5" cols="50"
                        cssClass="form-control" id="date-text-input"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="content-text-input" class="col-xs-2 col-sm-2 col-md-1 col-lg-1 col-form-label">
            <s:text name="page.newsList.label.content"/>
        </label>
        <div class="col-xs-10 col-sm-10 col-md-11 col-lg-11">
            <s:textarea name="news.content" label="brief" value="%{news.content}" rows="5" cols="50"
                         cssClass="form-control" id="content-text-input"/>
        </div>
    </div>

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
