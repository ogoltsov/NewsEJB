<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<style>
    div.link {
        padding: 5px;
        background-color: #f1f1f1;
    }
</style>


<div class="menu">
    <div class="link">
        <s:url action="list" var="aList"/>
        <s:a href="%{aList}">List News</s:a>
    </div>
    <div class="link">
        <s:url action="edit" var="aNewNews"/>
        <s:a href="%{aNewNews}">Add News</s:a>
    </div>
</div>