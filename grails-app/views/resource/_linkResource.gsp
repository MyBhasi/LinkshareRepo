<%@ page import="com.project.topic.Topic" %>
<html>
<body>
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
                    <input type="text" class="form-control" id="inputEmail"    placeholder="Link"
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
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </fieldset>
    </g:form>
</div>
</body>
</html>