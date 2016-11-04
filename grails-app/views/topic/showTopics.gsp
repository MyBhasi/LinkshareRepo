
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
        <div class="col-md-6">
            <g:if test="${topicList}">

                <div class="bs-docs-section">

                    <h3 class="text-center alert-info"><b>Topics created</b></h3>
                    %{--<div class="row">--}%
                    %{--<div class="col-lg-12">--}%
                    <div class="page-header">
                    </div>

                    <div class="bs-component">
                        <table class="table table-striped table-hover ">
                            <thead>
                            <tr>
                                %{--<th>#</th>--}%
                                <th>Topic Name</th>
                                <th>Description</th>
                                <th>Visibility</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>

                            <g:each in="${topicList}" var="tl">

                                <tr class="alert-info">
                                    %{--<td>4</td>--}%
                                    <td>${tl.topicName}</td>
                                    <td>${tl.description}</td>
                                    <td>${tl.visiblility}</td>
                                    <td><button class="btn-default"><g:link controller="topic" action="editTopic" params="[topicId:tl.id]">Edit</g:link> </button> </td>
                                    <td><button class="btn-default">Delete</button> </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div><!-- /example -->
                %{--</div>--}%
                %{--</div>--}%
                </div>
            </g:if>
            <g:else>
                <h3>No topic created</h3>
            </g:else>

        </div>
    </div>
</div>
</body>
</html>