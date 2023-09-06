<%@ page contentType="text/html; ISO-8859-1" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        html, body {
            height: 100%;
        }
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f6aabb;
            min-height: 100vh;
            margin: 0;
            padding: 4em;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .sidebar {
            background-color: pink;
            color: white;
            width: 250px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: -250px;
            transition: left 0.5s ease-in-out;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .sidebar.active {
            left: 0;
        }

        .sidebar a {
            padding: 1em 2.2em;
            text-decoration: none;
            font-size: 1.2em;
            color: white;
            display: block;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background-color: #555;
        }

        .sidebar a:first-child {
            margin-top: 50px;
        }

        .sidebar-image {
            display: none;
            width: 80%;
            height: 55%;
            margin: 0 auto;
            transform: translateX(-5%);
        }
        .sidebar.active .sidebar-image {
            display: block;
            padding-top: 40%;
            padding-left: 6%;
        }

        .content {
            padding: 2em;
            max-width: 800px;
            margin:  auto;
        }

        .toggle-btn-container {
            position: fixed;
            top: 20px;
            left: 20px;
            z-index: 999;
        }

        .toggle-btn {
            display: block;
            width: 30px;
            height: 30px;
            cursor: pointer;
            font-size: 24px;
            text-align: center;
            line-height: 30px;
            background-color: white;
            color: #f192a0;
            border-radius: 3px;
        }

        img {
            max-width: 100%;
            max-height: 100%;
            vertical-align: middle;
            transition: opacity 0.5s ease-in-out;
        }
    </style>


<body>

<div class="sidebar" id="sidebar">
    <a href="home">Home</a>
    <a href="employees">Employees</a>
    <a href="about">About</a>

<center>
    <img class="sidebar-image" src="https://www.pngplay.com/wp-content/uploads/6/Employment-Transparent-Background.png" alt="Image">
    </center>
</div>

<div class="content" id="content">
    <b>  <h1 style="font-size: 80px; padding-left: 7%">ABOUT</h1> </b>
    <p style="padding-left: 7%; font-size: 2.1em; outline-color: #cccccc">
        This software offers you a way to easily manage your staff. It is efficient and simple. The "Employees" tab will give you access to
        every employee that you have added to the software or if you want to add a new one. From there you can get certain information about an employee, you are able to update
        that information or even remove an employee from the software by clicking the delete button.

    </p>
</div>

<div class="toggle-btn-container">
    <div class="toggle-btn" onclick="toggleSidebar()">
        &#9776;
    </div>
</div>

<script>
    function toggleSidebar() {
        var sidebar = document.getElementById("sidebar");
        var content = document.getElementById("content");

        sidebar.classList.toggle("active");
        content.classList.toggle("active");
    }
</script>

</body>
</html>
