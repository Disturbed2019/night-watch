<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <c:import url="./components/head.jsp"/>
    <title>Регистрация</title>
</head>
<body>
<div class="wrapper">
    <header class="header">
        <div class="container">
            <div class="header__inner">
                <a href="/" class="logo"><img src="../../icons/logo.svg" alt="logo"></a>
                <nav class="menu">
                    <ul class="menu__list">
                        <li class="menu__list-item">
                            <a class="menu__list-link " href="/">Home</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="movie_page.jsp">Movies</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="actors.jsp">Actors</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link active" href="/registration">Sign in</a>
                        </li>
                    </ul>
                </nav>


                <nav class="menu-account">
                    <ul class="menu-account__list">
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="#">
                                <svg class="icon">
                                    <use xlink:href="./icons/sprite.svg#search"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="#">
                                <svg class="icon">
                                    <use xlink:href="./icons/sprite.svg#notification"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="/registration">
                                <svg class="icon">
                                    <use xlink:href="./icons/sprite.svg#account"></use>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main class="main">
        <div class="container">
            <div class="authorization">
                <div class="authorization__button">
                    <button class="btn">Register</button>
                </div>
                <div class="authorization__form-wrapper">
                    <div class="authorization__register">

                        <!--                       вставка формы регистрации -->
                        <form:form method="POST" modelAttribute="userForm" cssClass="form">
                        <h2 class="form__title">Registration</h2>
                        <div class="form__content">
                            <div>
                                <form:input type="text" path="username" placeholder="Username"
                                            autofocus="true"></form:input>
                                <form:errors path="username"></form:errors>
                                    ${usernameError}
                            </div>
                            <div>
                                <form:input type="password" path="password" placeholder="Password"></form:input>
                            </div>
                            <div>
                                <form:input type="password" path="passwordConfirm"
                                            placeholder="Confirm your password"></form:input>
                                <form:errors path="password"></form:errors>
                                    ${passwordError}
                            </div>
                            <button class="btn btn__form" type="submit">Register now!</button>
                            </form:form>


                            <!--                       вставка формы регистрации -->
                        </div>
                    </div>
                </div>
            </div>

    </main>


    <c:import url="components/footer.jsp"/>
</div>


<script src="../../js/main.js"></script>
</body>
</html>