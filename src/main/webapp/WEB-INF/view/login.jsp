<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <meta charset="UTF-8" />--%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
<%--    <link rel="stylesheet" type="text/css" href="form.css" />--%>
    <style>
        <%@include file= "/WEB-INF/view/css/style.css"%>
    </style>

<%--    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>--%>
<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/WEB-INF/js/form.js"></script>--%>
</head>
<body>
<section>
    <h1>Please sign Up and checking notification in 'console.log'</h1>
    <div class="container">
        <!-- sigh in -->
        <div class="user sighInBx">
            <div class="imgBx"><img src="${pageContext.request.contextPath}/img/pexels.jpeg">"/></div>
            <div class="formBx">
                <form class="form" action="" method="POST">
                    <h2>Sigh In</h2>
                    <input
                            class="submit"
                            type="text"
                            id="repeatName"
                            placeholder="Username"
                    />
                    <input
                            type="password"
                            id="repeatPassword"
                            placeholder="Password"
                    />
                    <input type="submit" value="Login" />
                    <p class="signup">
                        don't have an account?<a class="sightIn" href="${pageContext.request.contextPath}/registration">Sigh up.</a>
                    </p>
                </form>
            </div>
        </div>
        <!-- finish sigh in -->

        <!-- sigh up -->
        <div class="user sighupBx">
            <div class="formBx">
                <form class="form2" action="" method="POST" autocomplete="off">
                    <h2>Create an account</h2>
                    <input type="text" name="sighName" placeholder="Username" />
                    <input type="text" placeholder="Email Address" />
                    <input
                            type="password"
                            name="sighPasword"
                            placeholder="Create Password"
                    />
                    <input
                            type="password"
                            placeholder="Confirm Password"
                            id="sighRepeatPasword"
                    />
                    <input type="submit" value="Sigh Up" />
                    <p class="signup">
                        Already have an account?<a class="toggle" href="#">Sigh in.</a>
                    </p>
                </form>
            </div>
            <div class="imgBx"><img src="${pageContext.request.contextPath}/img/pexels2.jpeg"/></div>
        </div>
        <!-- finish  sigh up-->
    </div>
</section>
</body>
<script src="<c:url value="/js/form.js"/>"></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/form.js"></script>--%>
</html>