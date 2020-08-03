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
        <form action="/admin/editQuestionnaire" method="post" ModelAttibute="temp">

            <h4><input type="text" name="first"/></h4>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" path="first_quest" name="myColor" id="exampleRadios4" value="red">
                <label class="form-check-label" for="exampleRadios4">
                    <input type="text" name="color1"/>
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" path="first_quest" name="myColor" id="exampleRadios5" value="green">
                <label class="form-check-label" for="exampleRadios5">
                    <input type="text" name="color2">
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" path="first_quest" name="myColor" id="exampleRadios6" value="blue">
                <label class="form-check-label" for="exampleRadios6">
                    <input type="text" name="color3">
                </label>
            </div>
            <h4><input type="text" name="second"></h4>


            <div class="form-check form">
                <input class="form-check-input" type="radio" path="second_quest" name="color" id="inlineRadio1" value="red">
                <label class="form-check-label" for="inlineRadio1">
                    <input type="text" name="color4">
                </label>
            </div>


            <div class="form-check form">
                <input class="form-check-input" type="radio" path="second_quest" name="color" id="inlineRadio2" value="green"><
                <label class="form-check-label" for="inlineRadio2">
                    <input type="text" name="color5">
                </label>
            </div>


            <div class="form-check form">
                <input class="form-check-input" type="radio" path="second_quest" name="color" id="inlineRadio3" value="blue">
                <label class="form-check-label" for="inlineRadio3">
                    <input name="color6">
                </label>
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