<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

</head>
<style>
    .header {
        padding-top: 15px;
    }
    .menu {
        position: static;
    }
</style>
<body>
<div class="container-fluid">
    <div class="row header">
        <div class="col-sm-5 col-md-5 col-lg-5">
            <h1>
                <s:text name="page.main.newsPortal.title" />
            </h1>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2 col-md-2 col-lg-2 menu">
            <tiles:insertAttribute name="menu"/>
        </div>
        <div class="col-sm-10 col-md-10 col-lg-10">
            <tiles:insertAttribute name="workspace"/>
        </div>
    </div>
</div>

<%--<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/js/tether.min.js"></script>--%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>

</body>
</html>