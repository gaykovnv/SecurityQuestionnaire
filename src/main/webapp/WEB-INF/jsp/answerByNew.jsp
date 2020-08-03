<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta charset="utf-8">
    <title>Log in with your account</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body>
<div class="container">
    <div class="col-ms" align="center">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>First</th>
                <th>Second</th>
                <th>Parameter 1</th>
                <th>Parameter 2</th>
                <th>Parameter 3</th>
                <th>Parameter 4</th>
                <th>Parameter 5</th>
                <th>Parameter 6</th>
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach items="${list}" var="list">
                <tbody>
                <tr>
                    <td>${list.id}</td>
                    <td>${list.first}</td>
                    <td>${list.second}</td>
                    <td>${list.color1}</td>
                    <td>${list.color2}</td>
                    <td>${list.color3}</td>
                    <td>${list.color4}</td>
                    <td>${list.color5}</td>
                    <td>${list.color6}</td>
                    <td><a class="btn btn-outline-danger" href="/admin/deleteQuestionnaire?id=${list.id}">Delete</a></td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
        <a class="btn btn-outline-primary" href="/news">Main</a>

        <a class="btn btn-outline-success" href="/admin">Back</a>
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