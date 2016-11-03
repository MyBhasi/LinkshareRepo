<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="land"/>
    <title></title>
    %{--<p>Logged In as ${person.firstName}</p>--}%
</head>

<body>

%{--<div class="bs-docs-section">--}%
<div class="page-header" id="banner">
    <div class="row">
        <div class="col-lg-8 col-md-7 col-sm-6">
            <h1>Lumen</h1>

            <p class="lead">Light and shadow</p>
        </div>
        %{--<div class="row">--}%

        %{--</div>--}%
    </div>

    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-4">
            <div class="list-group table-of-contents">
                <a class="list-group-item" href="index.html#navbar">Navbar</a>
                <a class="list-group-item" href="index.html#buttons">Buttons</a>
                <a class="list-group-item" href="index.html#typography">Typography</a>
                <a class="list-group-item" href="index.html#tables">Tables</a>
                <a class="list-group-item" href="index.html#forms">Forms</a>
                <a class="list-group-item" href="index.html#navs">Navs</a>
                <a class="list-group-item" href="index.html#indicators">Indicators</a>
                <a class="list-group-item" href="index.html#progress-bars">Progress bars</a>
                <a class="list-group-item" href="index.html#containers">Containers</a>
                %{--<a class="list-group-item" href="index.html#dialogs">Dialogs</a>--}%
            </div>
        </div>

        <div class="col-lg-4">
            <div class="well bs-component">
                <g:form class="form-horizontal" controller="topic" action="creatTopic">
                    <fieldset>
                        <legend>Create Topic</legend>

                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Topic Name</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputEmail" placeholder="Enter topic"
                                       name="topicName">

                                <div>
                                    <g:hasErrors bean="${err}" field="topicName">

                                        <div class="alert alert-danger">
                                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                                            <g:message code="TopicCO.topicName.null.error"/>
                                        </div>

                                    </g:hasErrors>
                                </div>
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
                            <label for="textArea" class="col-lg-2 control-label">Visibility</label>

                            <div class="col-lg-10">
                                <g:select name="visibility" from="${projectEnums.Enums.Visibility.allVisibility()}"
                                          noSelection="['': 'Select visibility']"></g:select>

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

    </div>
</div>

%{--</div>--}%

</body>
</html>