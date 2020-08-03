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
         <h3>Анкета:</h3>
        <form action="questionnaire" method="post" ModelAttibute="test">
            <h3><input type="text" name="name"/></h3>
            <h4>Выберите любимые цвета:</h4>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" path="first_quest" name="myColor" id="exampleRadios4" value="red">
                <label class="form-check-label text-danger" for="exampleRadios4">
                    Red
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" path="first_quest" name="myColor" id="exampleRadios5" value="green">
                <label class="form-check-label text-success" for="exampleRadios5">
                    Green
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" path="first_quest" name="myColor" id="exampleRadios6" value="blue">
                <label class="form-check-label text-primary" for="exampleRadios6">
                    Blue
                </label>
            </div>
        <h4>Выберите только один любимый цвет:</h4>


            <div class="form-check form">
                <input class="form-check-input" type="radio" path="second_quest" name="color" id="inlineRadio1" value="red">
                <label class="form-check-label text-danger" for="inlineRadio1">Red</label>
            </div>


            <div class="form-check form">
                <input class="form-check-input" type="radio" path="second_quest" name="color" id="inlineRadio2" value="green">
                <label class="form-check-label text-success" for="inlineRadio2">Green</label>
            </div>


            <div class="form-check form">
                <input class="form-check-input" type="radio" path="second_quest" name="color" id="inlineRadio3" value="blue">
                <label class="form-check-label text-primary" for="inlineRadio3">Blue</label>
            </div>


            <input class="btn btn-outline-success" type="submit" value="Save"/>
        </form>
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