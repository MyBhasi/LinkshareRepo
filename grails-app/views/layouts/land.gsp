<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle></g:layoutTitle></title>

    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'custom.min.css')}" type="text/css">

    <g:layoutHead/>

</head>

<body>
<div class="navbar navbar-fixed-top">
    <div class="row">
        <div class="col-lg-12">
            <div class="bs-component">
                <nav class="navbar navbar-default">
                    <div class="container-fluid bg-primary">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                    data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="index.html#">Link Share</a>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="index.html#">Link <span class="sr-only">(current)</span></a>
                                </li>
                                <li><a href="index.html#">Link</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="index.html#">Link</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

        </div>
    </div>
</div>


<g:layoutBody/>

</body>
</html>