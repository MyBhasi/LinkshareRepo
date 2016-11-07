<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 4/11/16
  Time: 4:26 PM
--%>

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
            <g:if test="${resourceList}">

                <div class="bs-docs-section">

                    <h3 class="text-center alert-info"><b>Resource Created</b></h3>
                    %{--<div class="row">--}%
                    %{--<div class="col-lg-12">--}%
                    %{--<div class="page-header">--}%
                    %{--</div>--}%

                    <div class="bs-component">
                        <table class="table table-striped table-hover ">
                            <thead>
                            <tr>
                                %{--<th>#</th>--}%
                                <th>Resource  Type</th>
                                <th>Description</th>
                                <th>Corresponding Topic</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>

                            <g:each in="${resourceList}" var="rl">

                                <tr class="alert-info">
                                    %{--<td>4</td>--}%
                                    <td>${rl.domainClass.naturalName}</td>
                                    <td>${rl.description}</td>
                                    <td>${rl.topic.topicName}</td>

                                    <td><g:link controller="resource" action="editResource" params="[resource:rl.domainClass.naturalName]" >Edit</g:link></td>
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
                <h3>No Resource created</h3>
            </g:else>

        </div>
    </div>
</div>
</body>
</html>