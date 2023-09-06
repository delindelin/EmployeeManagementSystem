<%@ page contentType="text/html; ISO-8859-1" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>EMS</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f6aabb;
            min-height: 100vh;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .employee-form {
            border: 1px solid #ccc;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            width: 400px;
        }

        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .form-label {
            flex: 0 0 120px;
            text-align: right;
            padding-right: 15px;
        }

        .form-label-fixed-width {
            width: 120px;
        }

        .form-button {
            margin-top: 15px;
            text-align: center;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
<div class="employee-form">
    <form:form action="/update/${employee.id}" method="post" modelAttribute="employee">
        <h1>Update Employee</h1>
        <input type="hidden" name="_method" value="put">

        <div class="form-row">
            <div class="form-label">
                <form:label path="emer">Emri</form:label>
            </div>
            <div class="form-field">
                <form:input path="emer"/>
            </div>
        </div>

        <div class="form-row">
            <div class="form-label">
                <form:label path="mbiemer">Mbiemri</form:label>
            </div>
            <div class="form-field">
                <form:input path="mbiemer"/>
            </div>
        </div>

        <div class="form-row">
            <div class="form-label">
                <form:label path="mosha">Mosha</form:label>
            </div>
            <div class="form-field">
                <form:input path="mosha" type="number" min="0" step="1"/>
            </div>
        </div>

        <div class="form-row">
            <div class="form-label form-label-fixed-width">
                <form:label path="gjinia">Gjinia</form:label>
            </div>
            <div class="form-field">
                <form:select path="gjinia" >
                    <form:option value="m">Male</form:option>
                    <form:option value="f">Female</form:option>
                    <form:option value="-">Rather not say</form:option>
                </form:select>
            </div>
        </div>

        <div class="form-row">
            <div class="form-label">
                <form:label path="sektori">Sektori</form:label>
            </div>
            <div class="form-field">
                <form:input path="sektori"/>
            </div>
        </div>

        <div class="form-row">
            <div class="form-label">
                <form:label path="dataPunesimit">Data e Punesimit</form:label>
            </div>
            <div class="form-field">
                <form:input path="dataPunesimit"/>
            </div>
        </div>

        <div class="form-row">
            <div class="form-label">
                <form:label path="email">Email</form:label>
            </div>
            <div class="form-field">
                <form:input path="email"/>
            </div>
        </div>

        <div class="form-row">
            <div class="form-button" >
                <input type="submit" style="background-color: pink" value="Save"/>
            </div>
            <div class="form-button" >
                <input type="button" style="background-color: pink" onclick="window.location.href='/employees';"  value="Return"/>
            </div>


        </div>
    </form:form>




</div>


</body>

</html>