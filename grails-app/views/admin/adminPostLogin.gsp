
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
            <g:if test="${com.project.topic.Topic.recentTopicsAdmin()}">
            <h2 align="center">Recent Topics</h2>

            %{--<div class="bs-component">--}%
                <g:each in="${com.project.topic.Topic.recentTopicsAdmin()}" var="rtl">
                    <div class="alert-info text-center">
                        ${rtl.topicName} <br>
                    </div>
                </g:each>
            </g:if>
            <g:else>

            </g:else>
            %{--</div>--}%
        </div>

        <div class="col-md-6">
            <g:if test="${com.project.topic.Topic.recentLinkResourcesAdmin()}">
            <h2 align="center">Recent Link Resources</h2>

        %{--<div class="bs-component">--}%
            <g:each in="${com.project.topic.Topic.recentLinkResourcesAdmin()}" var="rlrl">
                <div class="alert-info text-center">
                    ${rlrl.url} <br>
                </div>
            </g:each>
            </g:if>
            <g:else>

            </g:else>
        %{--</div>--}%
        </div>

        <div class="col-md-6">
            <g:if test="${com.project.topic.Topic.recentDocumentResourcesAdmin()}">
                <h2 align="center">Recent Link Resources</h2>

            %{--<div class="bs-component">--}%
                <g:each in="${com.project.topic.Topic.recentDocumentResourcesAdmin()}" var="rdrl">
                    <div class="alert-info text-center">
                        ${rdrl.docName} <br>
                    </div>
                </g:each>
            </g:if>
            <g:else>

            </g:else>
        %{--</div>--}%
        </div>
    </div>
</div>


</body>
</html>