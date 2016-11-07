<%--
  Created by IntelliJ IDEA.
  User: flanker
  Date: 23/10/16
  Time: 9:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle /></title>
    <asset:javascript src="theme/bootstrap.min.js"/>
    <asset:javascript src="theme/custom.js"/>
    <asset:stylesheet href="theme/bootstrap.css"/>
    <asset:stylesheet href="theme/custom.min.css"/>
    <script  src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <g:layoutHead/>
</head>
<body >
<%@ page import="com.project.person.Person" %>
%{--<%@ page import="grails.plugin.springsecurity.SpringSecurityService" %>--}%
<div class="bs-component">
    <nav class="navbar navbar-default   navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                %{--<a class="navbar-brand" href=""><mark>LinkShare</mark></a>--}%
                <div class="row">
                    <div class="col-md-4">
                        %{--<asset:image src="theme/proxy_form.cgi.png"  alt="logo" />--}%
                        %{--<img src="" alt="logo" />--}%
                       <h1 class="text-center" ><i>LinkShare</i></h1>

                    </div>
                </div>
            </div>

            %{--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--}%
                <div class="nav navbar-nav navbar-right">
                    %{--<li class="active"><a href="index.html#">Link <span class="sr-only">(current)</span></a></li>--}%
                    %{--<li><a href="index.html#">Link</a></li>--}%
                    %{--<li class="dropdown">--}%
                        %{--<a href="index.html#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><b>${name}<b> <span class="caret"></span></a>--}%
                        %{--<ul class="dropdown-menu" role="menu">--}%
                            %{--<li><a href="index.html#">Action</a></li>--}%
                            %{--<li><a href="index.html#">Another action</a></li>--}%
                            %{--<li><a href="index.html#">Something else here</a></li>--}%
                            %{--<li class="divider"></li>--}%
                            %{--<li><a href="index.html#">Separated link</a></li>--}%
                            %{--<li class="divider"></li>--}%
                            %{--<li><a href="index.html#">One more separated link</a></li>--}%
                        %{--</ul>--}%


                        %{--<h2>Dropdowns</h2>--}%
                        %{--<p>The .dropdown class is used to indicate a dropdown menu.</p>--}%
                        %{--<p>Use the .dropdown-menu class to actually build the dropdown menu.</p>--}%
                        %{--<p>To open the dropdown menu, use a button or a link with a class of .dropdown-toggle and data-toggle="dropdown".</p>--}%
                        <div class="dropdown">
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                %{--<sec:ifLoggedIn>--}%
                                 ${Person.get(sec.loggedInUserInfo(field: 'id')).firstName}

                                %{--</sec:ifLoggedIn>--}%
                                <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">profile</a></li>
                                <li><a href="${createLink(controller:"logout")}">Logout</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>

                </div>
                <form class="navbar-form navbar-left"   action="#" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>

                    %{--<button type="submit" class="btn btn-default">Submit</button>--}%
                    <button type="button"   class="btn btn-info">
                        <span class="glyphicon glyphicon-search"></span> Search
                    </button>
                </form>
            </div>
    </nav>
</div>

%{--<div id="banner">--}%
    %{--<div class="row">--}%
        %{--<div class="col-lg-8 col-md-7 col-sm-6">--}%
            %{--<h1>Admin Panel</h1>--}%
            %{--<p class="lead">Light and shadow</p>--}%
        %{--</div>--}%
        %{--<div class="col-lg-4 col-md-5 col-sm-6">--}%
        %{--<div class="sponsor">--}%
        %{--<script async type="text/javascript" src="https://cdn.carbonads.com/carbon.js?zoneid=1673&amp;serve=C6AILKT&amp;placement=bootswatchcom" id="_carbonads_js"></script>--}%
        %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
    %{--<div class="row">--}%
        %{--<div class="col-lg-3 col-md-3 col-sm-4">--}%
            %{--<div class="list-group table-of-contents">--}%
                %{--<a class="list-group-item" href="index.html#navbar">Home</a>--}%
                %{--<a class="list-group-item" href="${createLink(controller: "topic")}">Create Topic</a>--}%
                %{--<a class="list-group-item" href="${createLink(controller: "resource")}">CreateResource</a>--}%
                %{--<a class="list-group-item" href="index.html#typography">Typography</a>--}%
                %{--<a class="list-group-item" href="index.html#tables">Tables</a>--}%
                %{--<a class="list-group-item" href="index.html#forms">Forms</a>--}%
                %{--<a class="list-group-item" href="index.html#navs">Navs</a>--}%
                %{--<a class="list-group-item" href="index.html#indicators">Indicators</a>--}%
                %{--<a class="list-group-item" href="index.html#progress-bars">Progress bars</a>--}%
                %{--<a class="list-group-item" href="index.html#containers">Containers</a>--}%
                %{--<a class="list-group-item" href="index.html#dialogs">Dialogs</a>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%




%{--<g:render template="/dashboard/sideBar"></g:render>--}%



<g:layoutBody/>

</body>
</html>