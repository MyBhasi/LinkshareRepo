
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="linkshare"/><title></title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <g:render template="/dashboard/sideBar"></g:render>
        </div>

        <div class="col-md-6">
            <h2 align="center">Recent Topics</h2>

            %{--<div class="bs-component">--}%
                <g:each in="${recentTL}" var="rtl">
                    <div class="alert-info text-center">
                        ${rtl.topicName} <br>
                    </div>
                </g:each>
            %{--</div>--}%
        </div>
    </div>
</div>


</body>
</html>