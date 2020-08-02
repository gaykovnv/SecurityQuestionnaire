<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta charset="utf-8">
    <title>Регистрация</title>
</head>

<body>
<div class="container">
    <div class="col-ms" align="center">
        <%--@elvariable id="userForm" type="com.example.uno"--%>
        <table>
            <form:form method="POST" modelAttribute="userForm">
                <thead>
                <h2>Регистрация</h2>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>

                    <div class="form-group">
                        <td><label for="username2">Username:</label></td>
                        <td>
                                <form:input type="text" path="username" id="username2" placeholder="Username"
                                            autofocus="true"></form:input>
                                <form:errors path="username"></form:errors>
                                ${usernameError}
                    </div>
                    </td>
                </tr>
                <tr>

                    <div class="form-group">
                        <td><label for="password2">Password:</label></td>
                        <td>
                            <form:input type="password" path="password" id="password2"
                                        placeholder="Password"></form:input>
                        </td>
                    </div>
                    </td>
                </tr>
                <tr>

                    <div class="form-group">
                        <td><label for="passwordConfirm1">Password Confirm:</label></td>
                        <td>
                            <form:input type="password" path="passwordConfirm" id="passwordConfirm1"
                                        placeholder="Confirm your password"></form:input>
                            <form:errors path="password"></form:errors>
                                ${passwordError}
                        </td>
                    </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button class="btn btn-primary" type="submit">Зарегистрироваться</button>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><a class="btn btn-primary m-2" href="/">Главная</a></td>
                </tr>
                </tbody>
            </form:form>


        </table>
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