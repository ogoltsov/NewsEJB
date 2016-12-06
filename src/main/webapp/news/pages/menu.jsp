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
        <s:a href="%{aList}">
            <s:text name="page.menu.listNews"/>
        </s:a>
    </div>
    <div class="link">
        <s:url action="edit" var="aNewNews"/>
        <s:a href="%{aNewNews}">
            <s:text name="page.menu.addNews"/>
        </s:a>
    </div>
    <div class="link">
        <s:url id="localeEN" namespace="/news" action="locale" >
            <s:param name="request_locale" >en</s:param>
        </s:url>
        <s:a href="%{localeEN}">
            <s:text name="page.menu.lang.en"/>
        </s:a>
    </div>
    <div class="link">
        <s:url id="localeRU" namespace="/news" action="locale" >
            <s:param name="request_locale" >ru</s:param>
        </s:url>
        <s:a href="%{localeRU}">
            <s:text name="page.menu.lang.ru"/>
        </s:a>
    </div>
</div>