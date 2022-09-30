<%@ page import="myapp.Vehicle" %>
<html>
<head>
    <meta name="layout" content="public"/>
    <title>Home Page</title>
    <asset:javascript src="jquery-3.5.1.js"/>

    <script type="text/javascript">
        $( document ).ready(function () {
            console.log("jQuery 3.5.1 loaded!");
        });
    </script>
</head>
<body>

<div id="content" role="main">
    <div class="container">
        <section class="row">
            <div class="col-12">
                <h1>Welcome ${name}!</h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                <p>There are ${vehicleTotal} vehicles in the database.</p>

                <ul>
                <g:each in="${vehicleList}" var="vehicle">
                    <li>
                        <g:link controller="vehicle" action="show" id="${vehicle.id}">
                            ${vehicle.name} - ${vehicle.year} ${vehicle.make.name} ${vehicle.model.name}
                        </g:link>
                    </li>
                </g:each>
                </ul>

                <g:form action="updateName" style="margin: 0 auto; width:320px">
                    <g:textField name="name" value="" />
                    <g:submitButton name="Update name" />
                </g:form>
            </div>
        </section>
    </div>
</div>

</body>
</html>