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
                <form class="form-horizontal" method="post" action=""${resource(file: 'j_spring_security_check')}">
                    <fieldset>
                        <legend>Login</legend>
                        <div class="form-group">
                            <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-10">
                                <input type="text"  name='j_username' class="form-control" id="inputEmail" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control"  name='j_passsword' id="inputPassword" placeholder="Password">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="remember-me"> Remember me
                                    </label><br>
                                    <label>
                                        <button type="submit"  class="btn btn-primary">Sign In</button>

                                    </label>
                                    <label>
                                        <g:link   controller="register" action="forget">
                                            Forget Password
                                        </g:link>
                                    </label>
                                </div>
                            </div>
                        </div>



                    </fieldset>
                </form>
            </div>
        </div>


        <div class="col-lg-4 col-lg-offset-1" >
            <div class=" well bs-component">
            <g:form method ="post" class="bs-component"  controller="register" action="submit" >
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


                <input class="form-group">
                    <label class="control-label" >PhotoUpload</label>
%{--<g:uploadForm  controller="landing" action="index" >--}%
<input type="file" name="photo" accept="image*" id="fileupload">
%{--<input type="submit" class ="button"  value="upload">--}%
%{--</g:uploadForm>--}%

                %{--<g:uploadForm action="login">--}%
                 %{--<input type="image" id="inputSmall" name="photo">--}%
                    %{--<input type="submit" value="upload" name="upload">--}%
                    %{--</g:uploadForm>--}%


            <div class="form-group">

                %{--<input type="submit"  style="width: 100px" value="Register">--}%
                <button type="submit" class="btn btn-primary" >Submit</button>
      </div>
        </g:form>
            </div>
</div>

</div>
<script src="${resource(dir:'js/theme',file:"bootstrap.min.js")}"/>
<script src="${resource(dir:'js/theme',file:"custom.js")}
</body>
</html>