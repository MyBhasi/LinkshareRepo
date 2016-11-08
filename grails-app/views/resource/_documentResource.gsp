<%@ page import="com.project.topic.Topic" %>
<html>
<body>
    <div class="well bs-component">
        <g:form class="form-horizontal"  enctype="multipart/form-data"  >

            <fieldset>
                <legend>Share Document</legend>

                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Document* </label>
                    %{--<input type="file"  name="document">--}%

                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputEmail1" placeholder="Document"
                               name="documentName">
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
                        <g:select name="topicName" from="${com.project.topic.Topic.list()}" optionKey="id"
                                  optionValue="topicName" noSelection="['': 'ChooseTopic']"></g:select>

                        %{--<span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>--}%
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        %{--<button type="submit" class="btn btn-default">submit</button>--}%
                        <g:actionSubmit class="btn btn-primary" action="saveDocumentResource"  value="${message(code: 'default.button.update.label', default: 'save')}" ></g:actionSubmit>
                    </div>
                </div>
            </fieldset>
        </g:form>
    </div>
</body>
</html>