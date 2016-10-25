<%--
  Created by IntelliJ IDEA.
  User: flanker
  Date: 24/10/16
  Time: 4:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <style type="text/css">
#submit{
    align-self: center;
}

        label
        {
         float: left;
         width: 65px;
        }

    </style>
   <meta name="layout" content="linkshare">
    <title></title>
</head>

<body>
<h1>login</h1>
<form method="post" action="${resource(file: 'j_spring_security_check')}">
    <div style="width: 220px" id="form">
 <label>UserName</label>
    <input type="text" name="j_username" id="username"/>
    <br>
    <label>Password</label>
    <input type="password" name="j_password" id="password"/>
    <br>
        <input type="submit" value="login" id="login"/>
     <g:link  action="login" >
         forgetpassword
     </g:link>
    </div>

 </form>
<h2>Registration</h2>
<g:form method="post"  controller="register" action="login.gsp">
<label>FirstName</label><br>
<input type="text" name="firstName" id="firstName"/>
<br>
<label>LastName</label><br>
<input type="text" name="lastName" id="lastName"/>
<br>
<label>RegisteredEmail</label><br>
<input type="text" name="registeredemail" id="registeredemail"/><br>
<label>UserName</label><br>
<input type="text" name="username" id="u"/><br>
<label>Password</label><br>
<input type="text" name="password" id="p"/><br>
<label>ConfirmPassword</label><br>
<input type="text" name="confirmpassword" id="confirmpassword"/><br>
<g:uploadForm  controller="register" action="login" >
    <label>photo</label><br>
        <input type="file" name="photo" accept="image*" id="fileupload">
<input type="submit" class ="button"  value="upload">
    </g:uploadForm><br>
<input type="submit"  id="submit"   value="Register">
</g:form>
</body>
</html>