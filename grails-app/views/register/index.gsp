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
    <h1 class="text-center"> <b><font size="10"> LinkShare</font></b></h1>>
    %{--<style type="text/css">--}%

%{--#submit{--}%
    %{--align-self: center;--}%
%{--}--}%

        %{--label--}%
        %{--{--}%
         %{--float: left;--}%
         %{--width: 65px;--}%
        %{--}--}%

    %{--</style>--}%
   %{--<meta name="layout" content="linkshare">--}%
    <title></title>
</head>

<body>
%{--<div class="bs-docs-section">--}%
    %{--<div class="row">--}%
        %{--<div class="col-lg-6">--}%
            %{--<div class="page-header">--}%
                %{--<h1 id="forms">Login</h1>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%

    <div class="row">
        <div class="col-lg-6">
            <div class="well bs-component">
                <form class="form-horizontal">
                    <fieldset>
                        <legend>Login</legend>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputEmail" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                <div class="checkbox">
                                    <label>
                                        <input type="submit"  value="login">
                                    </label>
                                </div>
                            </div>
                        </div>



                    </fieldset>
                </form>
            </div>
        </div>
        <div class="col-lg-4 col-lg-offset-1">

            <form class="bs-component"   action="">
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
                    <input type="text" class="form-control" id="inputError" name="password" placeholder="Password">
                </div>

                <div class="form-group has-success">
                    <label class="control-label" for="inputSuccess">Confirm Password</label>
                    <input type="text" class="form-control" id="inputSuccess" name="confirmPassword" placeholder="ConfirmPassword">
                </div>


                <input class="form-group">
                    <label class="control-label" >PhotoUpload</label>
<g:uploadForm  controller="register" action="login" >
<input type="file" name="photo" accept="image*" id="fileupload">
<input type="submit" class ="button"  value="upload">
</g:uploadForm>

                %{--<g:uploadForm action="login">--}%
                 %{--<input type="image" id="inputSmall" name="photo">--}%
                    %{--<input type="submit" value="upload" name="upload">--}%
                    %{--</g:uploadForm>--}%
            %{--</div>--}%

            <div class="form-group">
                <input type="submit"  style="width: 100px" value="Register">
    </div>
        </form>

    </div>
</h1>
</div>













%{--//old form--}%
%{--<h1>login</h1>--}%
%{--<form method="post" action="${resource(file: 'j_spring_security_check')}">--}%
    %{--<div style="width: 220px" id="form">--}%
 %{--<label>UserName</label>--}%
    %{--<input type="text" name="j_username" id="username"/>--}%
    %{--<br>--}%
    %{--<label>Password</label>--}%
    %{--<input type="password" name="j_password" id="password"/>--}%
    %{--<br>--}%
        %{--<input type="submit" value="login" id="login"/>--}%
     %{--<g:link  action="login" >--}%
         %{--forgetpassword--}%
     %{--</g:link>--}%
    %{--</div>--}%

 %{--</form>--}%
%{--<h2>Registration</h2>--}%
%{--<g:form method="post"  controller="register" action="login.gsp">--}%
%{--<label>FirstName</label><br>--}%
%{--<input type="text" name="firstName" id="firstName"/>--}%
%{--<br>--}%
%{--<label>LastName</label><br>--}%
%{--<input type="text" name="lastName" id="lastName"/>--}%
%{--<br>--}%
%{--<label>RegisteredEmail</label><br>--}%
%{--<input type="text" name="registeredemail" id="registeredemail"/><br>--}%
%{--<label>UserName</label><br>--}%
%{--<input type="text" name="username" id="u"/><br>--}%
%{--<label>Password</label><br>--}%
%{--<input type="text" name="password" id="p"/><br>--}%
%{--<label>ConfirmPassword</label><br>--}%
%{--<input type="text" name="confirmpassword" id="confirmpassword"/><br>--}%
%{--<g:uploadForm  controller="register" action="login" >--}%
    %{--<label>photo</label><br>--}%
        %{--<input type="file" name="photo" accept="image*" id="fileupload">--}%
%{--<input type="submit" class ="button"  value="upload">--}%
    %{--</g:uploadForm><br>--}%
%{--<input type="submit"  id="submit"   value="Register">--}%
%{--</g:form>--}%
</body>
</html>