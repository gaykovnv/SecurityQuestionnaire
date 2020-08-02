<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta charset="utf-8">
    <title>Опрос</title>
</head>
<body>
<div class="container">
    <div class="col-ms" align="center">
        <a class="btn btn-primary" href="/">Главная</a>
         <h3>Questionnaire:</h3>
        <form action="questionnaire" method="post">
            <h3><input type="text" name="name"/></h3>
            <h4>Select favourite colors from:</h4>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="redColor" id="exampleRadios4" value="${redColor}" checked>
                <label class="form-check-label" for="exampleRadios4">
                    Red
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="greenColor" id="exampleRadios5" value="${greenColor}">
                <label class="form-check-label" for="exampleRadios5">
                    Green
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="blueColor" id="exampleRadios6" value="${blueColor}">
                <label class="form-check-label" for="exampleRadios6">
                    Blue
                </label>
            </div>

                <input class="btn btn-outline-success" type="submit" value="Save"/>

        </form>
<%--            <h4>Select only one favourite color from:</h4>--%>
<%--            <div class="form-check">--%>
<%--                <input class="form-check-input" type="radio" name="redColor" id="exampleRadios1" value="option1" checked>--%>
<%--                <label class="form-check-label" for="exampleRadios1">--%>
<%--                    Red--%>
<%--                </label>--%>
<%--            </div>--%>
<%--            <div class="form-check">--%>
<%--                <input class="form-check-input" type="radio" name="greenColor" id="exampleRadios2" value="option2">--%>
<%--                <label class="form-check-label" for="exampleRadios2">--%>
<%--                    Green--%>
<%--                </label>--%>
<%--            </div>--%>
<%--            <div class="form-check">--%>
<%--                <input class="form-check-input" type="radio" name="blueColor" id="exampleRadios3" value="option3">--%>
<%--                <label class="form-check-label" for="exampleRadios3">--%>
<%--                    Blue--%>
<%--                </label>--%>
<%--            </div>--%>

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