<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="linkshare">
    <title></title>
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <g:render template="/dashboard/sideBar"></g:render>
        </div>

        <div class="col-lg-4">
            <g:render template="createTopic" bean="${err}"></g:render>
        </div>
    </div>
</div>
</body>
</html>