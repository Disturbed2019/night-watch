<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${role != 'ADMIN'}">
    <c:redirect url="/"/>
</c:if>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <c:import url="${pageContext.request.contextPath}/WEB-INF/jsp/components/head.jsp"/>
    <title>Список пользователей</title>

<body>
<div class="wrapper">
    <header class="header">
        <div class="container">
            <div class="header__inner">
                <a href="/" class="logo"><img src="${pageContext.request.contextPath}/icons/logo.svg" alt="logo"></a>
                <nav class="menu">
                    <ul class="menu__list">
                        <li class="menu__list-item">
                            <a class="menu__list-link active" href="/">Home</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/movies">Movies</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="./actors.html">Actors</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/logout">Logout</a>
                        </li>
                    </ul>
                </nav>


                <nav class="menu-account">
                    <ul class="menu-account__list">
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="#">
                                <svg class="icon">
                                    <use xlink:href="${pageContext.request.contextPath}/icons/sprite.svg#search"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="#">
                                <svg class="icon">
                                    <use xlink:href="${pageContext.request.contextPath}/icons/sprite.svg#notification"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="#">
                                <svg class="icon">
                                    <use xlink:href="${pageContext.request.contextPath}/icons/sprite.svg#account"></use>
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
                <a class="btn btn__primary delete_user" href="/admin/users">Список пользователей</a>
                <a class="btn btn__primary delete_user" href="/admin/films">Список фильмов</a>
                <a class="btn btn__primary delete_user" href="/admin/add_film">Добавить фильм</a>
            </div>
            <div class="add">


                <form:form method="post" modelAttribute="film">
                    <form:hidden path="id"/>
                    <div class="form__control">
                        <form:select path="category" name="category" id="film_category">
                            <form:option value="horror">Horror</form:option>
                            <form:option value="action">Action</form:option>
                            <form:option value="romance">Romance</form:option>
                            <form:option value="comedy">Comedy</form:option>
                            <form:option value="drama">Drama</form:option>
                            <form:option value="historical">Historical</form:option>
                            <form:option value="sci-fi">Sci-fi</form:option>
                        </form:select>
                        <form:label for="film_category" path="category">Категория</form:label>
                    </div>
                    <div class="form__control">
                        <form:input type="text" id="title" path="title"/>
                        <form:label for="title" path="title">Название</form:label>
                    </div>
                    <div class="form__control">
                        <form:input type="text" id="description" path="description"/>
                        <form:label for="description" path="description">Описание</form:label>
                    </div>
                    <div class="form__control">
                        <form:input type="file" id="preview_img" path="previewImg"/>
                        <form:label for="preview_img" path="previewImg">Постер</form:label>
                    </div>
                    <div class="form__control">
                        <form:input type="text" id="year" path="year"/>
                        <form:label for="year" path="year">Год</form:label>
                    </div>
                    <div class="form__control">
                        <form:input type="text" id="rating" path="rating"/>
                        <form:label for="rating" path="rating">Рейтинг</form:label>
                    </div>
                    <div class="form__control">
                        <form:input type="file" id="bg_img" path="bgImg"/>
                        <form:label for="bg_img" path="bgImg">Картинка для бэкграунда</form:label>
                    </div>
                    <div class="form__control">
                        <form:input type="text" id="trailer_link" path="trailerLink"/>
                        <form:label for="trailer_link" path="trailerLink">Ссылка на трейлер</form:label>
                    </div>
                    <button type="submit" class="btn btn__primary film_submit">Save</button>
                </form:form>


                <%--                <form action="/admin/add_film" id="add__film" >--%>
                <%--                    <div class="form__control">--%>
                <%--                        <select name="category" id="film_category">--%>
                <%--                            <option value="horror" selected>Horror</option>--%>
                <%--                            <option value="action" >Action</option>--%>
                <%--                            <option value="romance">Romance</option>--%>
                <%--                            <option value="comedy">Comedy</option>--%>
                <%--                            <option value="drama">Drama</option>--%>
                <%--                            <option value="historical">Historical</option>--%>
                <%--                            <option value="sci-fi">Sci-fi</option>--%>
                <%--                        </select>--%>
                <%--                        <label for="film_category">Категория</label>--%>
                <%--                    </div>--%>
                <%--                    <div class="form__control">--%>
                <%--                        <input type="text" id="title">--%>
                <%--                        <label for="title">Название</label>--%>
                <%--                    </div>--%>
                <%--                    <div class="form__control">--%>
                <%--                        <input type="text" id="description">--%>
                <%--                        <label for="description">Описание</label>--%>
                <%--                    </div>--%>
                <%--                    <div class="form__control">--%>
                <%--                        <input type="file" id="preview_img">--%>
                <%--                        <label for="preview_img">Постер</label>--%>
                <%--                    </div>--%>

                <%--                    <div class="form__control">--%>
                <%--                        <input type="text" id="year">--%>
                <%--                        <label for="year">Год</label>--%>
                <%--                    </div>--%>
                <%--                    <div class="form__control">--%>
                <%--                        <input type="text" id="rating">--%>
                <%--                        <label for="rating">Рейтинг</label>--%>
                <%--                    </div>--%>
                <%--                    <div class="form__control">--%>
                <%--                        <input type="file" id="bg_img">--%>
                <%--                        <label for="bg_img">Картинка для бэкграунда</label>--%>
                <%--                    </div>--%>
                <%--                    <div class="form__control">--%>
                <%--                        <input type="text" id="trailer_link">--%>
                <%--                        <label for="trailer_link">Ссылка на трейлер</label>--%>
                <%--                    </div>--%>

                <%--                    <button type="submit" class="btn btn__primary film_submit" >Добавить фильм</button>--%>
                <%--                </form>--%>
            </div>
        </div>
    </main>
</div>

<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>

</html>
