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

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f6aabb;
            min-height: 100vh;
            margin: 0;
            padding: 0;

        }

        ::-webkit-scrollbar {
            width:1em;

        }

        ::-webkit-scrollbar-track {
            background: #ffcbcb;
        }

        ::-webkit-scrollbar-thumb {
            background: #fff4f4;

        }

        ::-webkit-scrollbar-thumb:hover {
            background: white;
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
        * {
            box-sizing: border-box;
        }

        a {
            color: inherit;
        }

        .wrapper {
            max-width: 65rem;
            margin: 3rem auto;
            border: 0.3rem solid pink;
            border-radius: 0.5rem;
            padding: 2rem;
        }

        ul {
            padding: 1.5rem 1.5rem 1.5rem 4em;
            border: 0.3rem solid pink;
            columns: 25rem;
            column-gap: 7rem;
            column-rule: 4px dotted pink;
            border-radius: 0.5rem;
        }

        ul > * + * {
            margin-top: 1rem;
        }

        li {
            break-inside: avoid;
        }

        ::marker {
            content: counters(list-item, '') ': ';
            font-weight: 700;
            font-size: 1.5em;
            color: #f6aabb;
        }

        li span {
            display: block;
        }

        li span:first-child {
            font-size: 1.5em;
        }

        li span:last-child {
            font-style: italic;
        }

        .toggle-btn-container {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 999;
            display: flex;
            align-items: center;
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

        .register-button {
            display: block;
            padding: 5px 10px;
            font-size: 18px;
            background-color: white;
            color: #f192a0;
            text-decoration: none;
            border-radius: 3px;
            border: 2px solid white;
            position: fixed;
            top: 17.5px;
            right: 20px;
            z-index: 1;
        }
        .register-button:hover {
            background-color: white;
            color: #f192a0;;
            border-color:  #f192a0;
        }
    </style>
    <script>
        function toggleSidebar() {
            var sidebar = document.getElementById("sidebar");
            var content = document.getElementById("content");

            sidebar.classList.toggle("active");
            content.classList.toggle("active");
        }
    </script>
</head>
<body>

<div class="toggle-btn-container">
    <div class="toggle-btn" onclick="toggleSidebar()">
        &#9776;
    </div>

    <div class="custom-button">
        <a style="text-decoration-line: none ;  " class="register-button" href="/registerEmployee">Register Employee</a>
    </div>
</div>
<div class="scrollbar" id="style-1">
    <div class="force-overflow"></div>
</div>
<div class="sidebar" id="sidebar">
    <a href="home">Home</a>
    <a href="employees">Employees</a>
    <a href="about">About</a>
    <center>
        <!-- Image from the About tab -->
        <img class="sidebar-image" src="https://www.pngplay.com/wp-content/uploads/6/Employment-Transparent-Background.png" alt="Image">
    </center>
</div>

<div class="wrapper">
    <div class="content" id="content">
        <center>
            <p style="font-size: 80px;">EMPLOYEES</p>
        </center>

        <c:forEach items="${employee}" var="Employee">
            <ul>
                <li>
                    <span><p style="padding-left: 7%; font-size: 25px">Employee - <a  href="/update/${Employee.id}"> <c:out value="${Employee.emer}"/> <c:out value="${Employee.mbiemer}"/>  <c:out value=" - Update Employee"/>  </a> <center><form action="/delete/${Employee.id} " method="post" >
                            <input type="hidden" name="_method" value="delete">
                            <button style="background-color: pink ; font-size: 20px">Delete Employee</button></form></center>
                </span>
                </li>
            </ul>
        </c:forEach>
    </div>
</div>

</body>
</html>
