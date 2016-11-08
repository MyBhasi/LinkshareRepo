<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 4/11/16
  Time: 4:26 PM
--%>

<%@ page import="com.project.linkresource.LinkResource" contentType="text/html;charset=UTF-8" %>
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

                    <div class="bs-component">
                        <table class="table table-striped table-hover ">
                            <h1>Link Resources</h1>
                            <thead>
                            <tr>
                                %{--<th>#</th>--}%
                                %{--<th>Resource  Type</th>--}%
                                <th>link</th>
                                <th>Description</th>
                                <th>Corresponding Topic</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>

                            <g:each in="${resourceList}" var="rl">
                                <g:if test="${rl.class==com.project.linkresource.LinkResource}">

                                <link class="alert-info">
                                    <td><a href="${rl.url}">${rl.url}</a></td>
                                    <td>${rl.description}</td>
                                    <td>${rl.topic.topicName}</td>

                                    <td><g:link controller="resource" action="editResource" params="[resource:rl.domainClass.naturalName,rl:rl]" >Edit</g:link></td>
                                    <td><button class="btn-default">Delete</button> </td>
                                </tr>
                                    </g:if>
                            </g:each>
                            </tbody>
                        </table>
                    </div><!-- /example -->
                %{--</div>--}%
                %{--</div>--}%
                </div>


                <div class="bs-component">
                    <table class="table table-striped table-hover ">
                        <h1>Document Resources</h1>
                        <thead>
                        <tr>
                            %{--<th>#</th>--}%
                            %{--<th>Resource  Type</th>--}%
                            <th>file</th>
                            <th>Description</th>
                            <th>Corresponding Topic</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>

                        <g:each in="${resourceList}" var="rl">
                            <g:if test="${rl.class==com.project.documentresource.DocumentResource}">

                            <tr class="alert-info">
                                %{--<td>4</td>--}%
                                <td><g:link  controller="resource"  action="downloadDocument"  id="${rl.id}">${rl.docName}</g:link></td>
                                <td>${rl.description}</td>
                                <td>${rl.topic.topicName}</td>

                                <td><g:link controller="resource" action="editResource" params="[resource:rl.domainClass.naturalName,rl:rl]" >Edit</g:link></td>
                                <td><button class="btn-default">Delete</button> </td>
                            </tr>
                                </g:if>
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