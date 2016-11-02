<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="land"/>
    <title></title>
    <p>Logged In as ${person.firstName}</p>
</head>

<body>

%{--<div class="bs-docs-section">--}%
<div class="row">
    <div class="col-lg-6">
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
%{--</div>--}%

</body>
</html>