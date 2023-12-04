<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Online Job Portal</title>
    <%@include file="all_component/all_css.jsp"%>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .back-img {
            background: url("img/admin_bg_2.jpg");
            height: 100vh;
            width: 100%;
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            position: relative;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
        }

        .content {
            z-index: 1;
            color: #fff;
            text-align: center;
        }

        .welcome-text {
            font-size: 3em;
            margin: 0;
        }

        .sub-text {
            font-size: 1.5em;
            margin-top: 10px;
        }

        .btn-primary {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1.2em;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <c:if test="${userobj.role ne 'admin' }">
        <c:redirect url="login.jsp"></c:redirect>
    </c:if>

    <%@include file="all_component/navbar.jsp"%>

    <div class="back-img">
        <div class="overlay"></div>
        <div class="content">
            <h1 class="welcome-text">Welcome, Admin!</h1>
            <p class="sub-text">Managing the online job portal with ease.</p>
            <a href="/view_jobs.jsp" class="btn-primary">Get Started</a>
        </div>
    </div>
</body>
</html>
