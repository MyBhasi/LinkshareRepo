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
        <div class="col-lg-5">
            <div class="well bs-component">
            %{--<g:hasErrors bean="" "${err}" field="">--}%
            %{--"${error}"--}%
            %{--</g:hasErrorsbean:>--}%
                <g:form class="form-horizontal"  controller="resource" action="linkUpdate" >

                    <fieldset>
                        <legend>Share Link
                        </legend>

                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Link* </label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputEmail" placeholder="Link"
                                       name="url">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="textArea" class="col-lg-2 control-label">Description</label>

                            <div class="col-lg-10">
                                <textarea class="form-control" rows="3" id="textArea" name="description"></textarea>
                                %{--<span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>--}%
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="textArea" class="col-lg-2 control-label">Topic</label>

                            <div class="col-lg-10">
                                <g:select name="topicName" from="${com.project.topic.Topic.list()}" optionKey="id"
                                          optionValue="topicName" noSelection="['': 'Choose Topic']"></g:select>

                                %{--<span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>--}%
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                %{--<button type="reset" class="btn btn-default">Cancel</button>--}%
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </div>
                    </fieldset>
                </g:form>
            </div>
        </div>

</body>
</html>