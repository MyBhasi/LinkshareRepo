<html>
<body>
%{--<div class="col-lg-4">--}%
    <div class="well bs-component">
        <g:form class="form-horizontal" params="[topicId:topicId]">
            <fieldset>
                <legend>Create Topic</legend>

                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Topic Name</label>

                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputEmail" placeholder="Enter topic"
                               name="topicName">

                        <div>
                            <g:hasErrors bean="${err}">

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
                                  noSelection="['null': 'Select visibility']"></g:select>

                        %{--<span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>--}%
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        %{--<button type="reset" class="btn btn-default">Cancel</button>--}%
                        %{--<button type="submit" class="btn btn-primary">Submit</button>--}%
                        <g:if test="${actionName == 'index'}">
                            <g:actionSubmit value="Submit" action="createTopic"></g:actionSubmit>
                        </g:if>
                        <g:elseif test="${actionName=="editTopic"}">
                            <g:actionSubmit value="Update" action="updateTopic"></g:actionSubmit>
                        </g:elseif>
                    </div>
                </div>
            </fieldset>
        </g:form>
    </div>
%{--</div>--}%


</body>
</html>