<%--
  Created by IntelliJ IDEA.
  User: flanker
  Date: 24/10/16
  Time: 4:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content='loginlay'>
    <h1 class="text-center"> <b><font size="10"> LinkShare</font></b></h1>

    <title></title>
</head>

<body>

    <div class="row">
        <div class="col-lg-6">
            <div class="well bs-component">
                <legend>Please Login </legend>

                <form method="POST" action="${resource(file: '/j_spring_security_check')}"
                      class="form-horizontal">
                    <div class="form-group">
                        <label for="username1" class="col-sm-2 control-label">Username</label>

                        <div class="col-sm-10">
                            <g:textField class="form-control" id="username1" name="j_username"
                                         placeholder="Enter username"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password1" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                            <g:passwordField class="form-control" id="password1" name="j_password"
                                             placeholder="Enter password"/>
                        </div>
                    </div>
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
                    <div class="form-group">
                        %{--<div class="col-sm-offset-2 col-sm-10">--}%
                        <button type="submit" class="btn btn-default col-sm-2">Login</button>

                        </div>
                <label>
                    <g:link   controller="register" action="forget">
                        Forget Your Password?
                    </g:link>
                </label>
                </form>
            </div>
        </div>


        <div class="col-lg-4 col-lg-offset-1" >
            <div class=" well bs-component">
                <div class ="form-group-lg">
                    <g:if test="${error}">
                        <h1>"${error}"<h1>
                    </g:if>
                </div>

            <g:form method ="post" class="bs-component"  enctype="multipart/form-data"  controller="user" action="save" >
                <legend>Registration</legend>
                <div class="form-group">
                    <label class="control-label" for="focusedInput">FirstName</label>
                    <input class="form-control" id="focusedInput" type="text" name="firstName" placeholder="FirstName">
                </div>

                <div class="form-group">
                    <label class="control-label" for="disabledInput">LastName</label>
                    <input class="form-control" id="disabledInput" type="text"  name="lastName" placeholder="LastName" >
                </div>

                <div class="form-group has-warning">
                    <label class="control-label" for="inputWarning">UserName/Email</label>
                    <input type="text" class="form-control" id="inputWarning" name="username" placeholder="UserName/Email">
                </div>

                <div class="form-group has-error">
                    <label class="control-label" for="inputError">Password</label>
                    <input type="password" class="form-control" id="inputError" name="password" placeholder="Password">
                </div>

                <div class="form-group has-success">
                    <label class="control-label" for="inputSuccess">Confirm Password</label>
                    <input type="password" class="form-control" id="inputSuccess" name="confirmPassword" placeholder="ConfirmPassword">
                </div>



                    <label class="control-label" >PhotoUpload</label>
%{--<g:uploadForm  controller="landing" action="index" >--}%
<input type="file" name="photo"  id="photo"><br>
%{--<input type="submit" class ="button"  value="upload">--}%
%{--</g:uploadForm>--}%

                %{--<g:uploadForm action="login">--}%
                 %{--<input type="image" id="inputSmall" name="photo">--}%
                    %{--<input type="submit" value="upload" name="upload">--}%
                    %{--</g:uploadForm>--}%


            <div class="form-group">
                                <g:actionSubmit class="btn btn-primary"   action="save" value="${message(code: 'default.button.update.label', default: 'save')}" ></g:actionSubmit>
                %{--<input type="submit"  style="width: 100px" value="Register">--}%
                %{--<button type="submit" class="btn btn-primary" >Submit</button>--}%
      </div>
        </g:form>
            </div>
</div>

</div>


<script src="${resource(dir:'js/theme',file:"bootstrap.min.js")}"/>
<script src="${resource(dir:'js/theme',file:"custom.js")}
</body>
</html>