
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
    <div class="well bs-component">
        %{--<g:hasErrors bean="" "${err}" field="">--}%
            %{--"${error}"--}%
        %{--</g:hasErrorsbean:>--}%
        <g:form class="form-horizontal"  controller="resource" action="saveLinkResource" >

            <fieldset>
                <legend>Share Link
                </legend>

                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Link* </label>

                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputEmail" placeholder="Link"
                               name="topicName">
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
                        <g:select name="topicName" from="${Topic.list()}" optionKey="id"
                                  optionValue="topicName" noSelection="['': 'Choose Topic']"></g:select>

                        %{--<span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>--}%
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        %{--<button type="reset" class="btn btn-default">Cancel</button>--}%
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </fieldset>
        </g:form>
    </div>
</div>

%{--<div class="row">--}%
<div class="col-lg-5 col-lg-5">
    <div class="well bs-component">
        <form class="form-horizontal">
            <g:if test="${error}">
                "${error}"
            </g:if>
            <fieldset>
                <legend>Share Document</legend>

                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Document* </label>
                    %{--<input type="file"  name="document">--}%

                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputEmail1" placeholder="Document"
                               name="topicName">
                        <input type="file"  name="document">
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
                        <g:select name="topic" from="${Topic.list()}" optionKey="id"
                                  optionValue="topicName" noSelection="['': 'ChooseTopic']"></g:select>

                        %{--<span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>--}%
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        %{--<button type="reset" class="btn btn-default">Cancel</button>--}%
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
%{--</div>--}%
</div>
</div>

</body>
</html>