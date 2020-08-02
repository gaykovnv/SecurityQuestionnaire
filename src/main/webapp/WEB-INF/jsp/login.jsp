<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta charset="utf-8">
    <title>Log in with your account</title>
</head>

<body>
<div class="container">
    <sec:authorize access="isAuthenticated()">
        <% response.sendRedirect("/"); %>
    </sec:authorize>
    <div class="col-ms" align="center">

        <form method="POST" action="/login">
            <table>
                <thead>
            <h2>Вход в систему</h2>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
            <div class="form-group">
                <td><label for="username1">Username:</label></td>
                <td>
                    <input name="username" type="text" id="username1" placeholder="Username"
                       autofocus="true"/>
                </td>
            </div>
                </tr>
                <tr>
            <div class="form-group">
                <td><label for="password1">Password:</label></td>
                <td>
                    <input name="password" type="password" id="password1" placeholder="Password"/>
                </td>
            </div>
                </tr>
                <tr>
                    <td colspan="2"><button class="btn btn-primary" type="submit">Log In</button></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a class="btn btn-outline-primary my-2" href="/registration">Зарегистрироваться</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</body>
</html>