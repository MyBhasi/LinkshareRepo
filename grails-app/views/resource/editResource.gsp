<%--
  Created by IntelliJ IDEA.
  User: anuj
  Date: 4/11/16
  Time: 7:23 PM
--%>

<%@ page import="com.project.topic.Topic" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta  name="layout" content="linkshare">
    <title></title>
</head>

<body>
%{--<div class="container-fluid">--}%
    <div class="row">
        <div class="col-md-3">
            <g:render template="/dashboard/sideBar"></g:render>
        </div>
    <div  class="col-md-5">
       <g:if test="${params.resource=="Link Resource"}">
           <g:render  template="linkResource" ></g:render>
       </g:if>
    <g:else>
        <g:render  template="documentResource"  ></g:render>
    </g:else>
        </div>
</div>
</body>
</html>