<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Authorization</title>
    <link rel="stylesheet" href="../../css/style.min.css">
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
                    <button class="btn authorization__button-active" data-tabs-handler="login">Login</button>
                </div>
                <div class="authorization__form-wrapper">
                    <div class="authorization__login " data-tabs-form="login">

                        <!--                       вставка формы входа -->
                        <form:form method="POST" modelAttribute="userLoginForm" cssClass="form">
                        <h2 class="form__title">Sigh in</h2>
                        <div class="form__content">
                            <div>
                                <form:input type="text" path="username" placeholder="Username"
                                            autofocus="true"></form:input>
                            </div>
                            <div>
                                <form:input type="password" path="password" placeholder="Password"></form:input>
                                <form:errors path="password"></form:errors>
                                    ${passwordLoginError}
                            </div>
                            <button class="btn btn__form" type="submit">Sigh in</button>
                            </form:form>



                            <!--                       вставка формы входа -->

                    </div>
                    <div class="authorization__register hidden " data-tabs-form="register">

                    </div>
                </div>
            </div>
        </div>

    </main>


    <footer class="footer">
        <div class="footer__content">
            <div class="container">
                <div class="footer__inner">
                    <div class="footer__logo">
                        <img src="../../icons/logo.svg" alt="" class="logo">
                        <ul class="footer__social-list">
                            <li class="footer__social-item">
                                <a href="#" class="footer__social-link">
                                    <svg class="icon">
                                        <use xlink:href="./icons/social-sprite.svg#face"></use>
                                    </svg>
                                </a>

                            </li>
                            <li class="footer__social-item">
                                <a href="#" class="footer__social-link">
                                    <svg class="icon">
                                        <use xlink:href="./icons/social-sprite.svg#twit"></use>
                                    </svg>
                                </a>
                            </li>
                            <li class="footer__social-item">
                                <a href="#" class="footer__social-link">
                                    <svg class="icon">
                                        <use xlink:href="./icons/social-sprite.svg#link"></use>
                                    </svg>
                                </a>
                            </li>
                            <li class="footer__social-item">
                                <a href="#" class="footer__social-link">
                                    <svg class="icon">
                                        <use xlink:href="./icons/social-sprite.svg#inst"></use>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <ul class="footer__nav-list">
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Voice over and Subtitle</a>
                        </li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Media Center</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Privacy</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Contact us</a></li>
                    </ul>
                    <ul class="footer__nav-list">
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Voice Description</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Investor Relations</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Legal Provisions</a></li>
                    </ul>
                    <ul class="footer__nav-list">
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Help Center</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Job Opportunities</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Cookies Preferences</a></li>
                    </ul>
                    <ul class="footer__nav-list">
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Gift Cards</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Terms of Use</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Corporate Informations</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>


<script src="../../js/main.js"></script>
</body>
</html>