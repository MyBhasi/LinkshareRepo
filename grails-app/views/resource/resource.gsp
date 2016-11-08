
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.project.topic.Topic" %>
<html>
<head>
    <meta name="layout" content="linkshare"/>
    <title></title>
</head>

<body>
<div class="container-fluid">
<div class="row">
    <div class="col-md-3">
        <g:render template="/dashboard/sideBar"></g:render>
    </div>
<div class="col-lg-5">
    <g:render template="linkResource"></g:render>
<div class="col-lg-5">
   <g:render template="documentResource"></g:render>
</div>
</div>
</body>
</html>