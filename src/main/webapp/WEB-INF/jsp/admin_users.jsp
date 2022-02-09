<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="./css/style.min.css">
</head>
<body>
<div class="wrapper">
    <header class="header">
        <div class="container">
            <div class="header__inner">
                <a href="/" class="logo"><img src="./icons/logo.svg" alt="logo"></a>
                <nav class="menu">
                    <ul class="menu__list">
                        <li class="menu__list-item">
                            <a class="menu__list-link active" href="/">Home</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="./movie_page.html">Movies</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="./actors.html">Actors</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/login">Sign in</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/registration">Sign Up</a>
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
                            <a class="menu-account__list-link" href="#">
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

    <main class="main admin">
        <div class="container">
            <div class="admin__wrapper">
                <a class="btn btn__primary delete_user" href="./list_users.html">Список пользователей</a>
                <a class="btn btn__primary delete_user" href="./list_films.html">Список фильмов</a>
                <a class="btn btn__primary delete_user" href="./add_film.html">Добавить фильм</a>
            </div>
            <div class="users">
                <ul class="users__list">
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                    <li class="users__item">
                        <span>1</span>
                        <p>Имя пользователя</p>
                        <button class="btn btn__primary delete_user">Удалить пользователя</button>
                    </li>
                </ul>

            </div>
        </div>
    </main>









    <footer class="footer">
        <div class="footer__content">
            <div class="container">
                <div class="footer__inner">
                    <div class="footer__logo">
                        <img src="icons/logo.svg" alt="" class="logo">
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
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Voice over and Subtitle</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Media Center</a></li>
                    </ul>
                    <ul class="footer__nav-list">
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Voice Description</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Investor Relations</a></li>
                    </ul>
                    <ul class="footer__nav-list">
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Help Center</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Job Opportunities</a></li>
                    </ul>
                    <ul class="footer__nav-list">
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Gift Cards</a></li>
                        <li class="footer__nav-item"><a class="footer__nav-link" href="#">Terms of Use</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>

<script src="./js/main.js"></script>
</body>

</html>
