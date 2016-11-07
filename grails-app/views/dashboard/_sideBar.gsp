<html>
<body>
<div id="banner">
    %{--<div class="col-sm-3 col-lg-2">--}%
        <nav class="navbar navbar-default navbar-fixed-side">
            <!-- normal collapsible navbar markup -->
            <div class="list-group table-of-contents">
                <a class="list-group-item" href="index.html#navbar">Home</a>
                <a class="list-group-item" href="${createLink(controller: "topic")}">Create Topic</a>
                <a class="list-group-item" href="${createLink(controller: "resource")}">CreateResource</a>
                <a class="list-group-item" href="${createLink(controller: "topic", action: "showTopics")}">Show Topics</a>
                <a class="list-group-item" href="${createLink(controller: "resource",action: "showResource")}">ShowResources</a>
                <a class="list-group-item" href="index.html#tables">Tables</a>
                <a class="list-group-item" href="index.html#forms">Forms</a>
                <a class="list-group-item" href="index.html#navs">Navs</a>
                <a class="list-group-item" href="index.html#indicators">Indicators</a>
                <a class="list-group-item" href="index.html#progress-bars">Progress bars</a>
                <a class="list-group-item" href="index.html#containers">Containers</a>
                <a class="list-group-item" href="index.html#dialogs">Dialogs</a>
            </div>
        </nav>
    %{--</div>--}%
</div>
</body>
</html>