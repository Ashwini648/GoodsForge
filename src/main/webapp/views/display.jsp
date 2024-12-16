<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Page</title>
<style>
    /* Global styling */
    body {
    background-image: url('https://www.shutterstock.com/image-illustration/elegant-futuristic-light-reflection-grid-600nw-536582824.jpg');
        background-size: cover;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

   /* Navbar Styling */
.navbar {
    background-color: blue; /* Semi-transparent background */
    padding: 10px 20px; /* Padding around the navbar */
    position: fixed; /* Sticks the navbar at the top */
    top: 0;
    width: 100%; /* Full width */
    z-index: 1000; /* Ensures the navbar is above other elements */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Adds a subtle shadow */
}

.navbar-header {
    display: flex;
    align-items: center;
}

.navbar-brand {
    font-size: 22px;
    font-weight: bold;
    color: white;
    text-decoration: none;
    margin-right: 30px;
}

.navbar-brand:hover {
    color: #ffc107; /* Highlight the brand on hover */
}

.navbar-toggle {
    display: none; /* Default hidden toggle button for mobile */
}

.navbar-links {
    display: flex; /* Flexbox for alignment */
    gap: 20px; /* Spacing between links */
    align-items: center;
    margin-left: auto; /* Push links to the right */
}

.navbar-link {
    font-size: 18px;
    color: white;
    text-decoration: none;
    font-weight: bold;
    transition: color 0.3s ease;
}

.navbar-link:hover {
    color: #ffc107; /* Highlight links on hover */
    text-decoration: underline; /* Optional hover underline */
}

/* Responsive Design */
@media (max-width: 768px) {
    .navbar-toggle {
        display: block; /* Show toggle button on small screens */
        background-color: white;
        border: none;
        font-size: 24px;
        cursor: pointer;
        margin-left: auto;
    }

    .navbar-links {
        display: none; /* Hide links by default on small screens */
        flex-direction: column; /* Stack links vertically */
        background-color: rgba(0, 0, 0, 0.9); /* Dropdown background */
        position: absolute;
        top: 50px; /* Below the navbar */
        left: 0;
        right: 0;
        padding: 10px 0;
    }

    .navbar-links.active {
        display: flex; /* Show links when active */
    }

    .navbar-link {
        text-align: center;
        padding: 10px 0;
    }
}

    /* Header styling */
    .header {
        background-color: rgba(0, 0, 0, 0.5);
        height: 150px;
        display: flex;
        justify-content: center;
        align-items: center;
        color: white;
        margin-top: 60px; /* Space below the fixed navbar */
    }

    .header h1 {
        font-size: 2.5em;
        margin: 0;
    }

    /* Table styling */
    .container {
        padding: 20px;
        margin: 0 auto;
        max-width: 1200px;
        margin-top: 30px;
    }

    .table {
        width: 100%;
        border-collapse: collapse;
        background-color: white;
    }

    .table thead {
        background-color: #007bff;
        color: white;
    }

    .table th, .table td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ddd;
    }

    .table-hover tbody tr:hover {
        background-color: #f1f1f1;
    }

    /* Button styling */
    .btn {
        display: inline-block;
        padding: 8px 12px;
        font-size: 0.9em;
        color: white;
        text-decoration: none;
        border-radius: 4px;
        transition: background-color 0.3s;
    }

    .btn-warning {
        background-color: #ffc107;
    }

    .btn-warning:hover {
        background-color: #e0a800;
    }

    .btn-danger {
        background-color: #dc3545;
    }

    .btn-danger:hover {
        background-color: #c82333;
    }

    /* Responsive table */
    @media (max-width: 768px) {
        .table {
            font-size: 0.9em;
        }

        .btn {
            font-size: 0.8em;
            padding: 6px 10px;
        }
    }
</style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="myNavbar">
                <div class="collapse navbar-collapse" id="myNavbar">
            <div class="d-flex justify-content-between w-100">
                <a href="/" class="navbar-link">Home</a>
                <a href="http://localhost:8081/views/add.jsp" class="navbar-link">Add Product</a>
                <a href="http://localhost:8081/views/display.jsp" class="navbar-link">Display Products</a>
            </div>
            </div>
        </div>
    </nav>

    <!-- Header Section -->
    <div class="header">
        <h1>All Products Data</h1>
    </div>

    <!-- Table Section -->
    <div class="container table-responsive py-5">
        <table class="table table-bordered table-hover">
            <thead class="table-primary">
                <tr>
                    <th scope="col">Pid</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Category</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="p" items="${products}">
                <tr>
                    <th scope="row">${p.pid}</th>
                    <td>${p.name}</td>
                    <td>${p.price}</td>
                    <td>${p.quantity}</td>
                    <td>${p.category}</td>
                    <td>
                        <a href="view-product?pid=${p.pid}" class="btn btn-warning">UPDATE</a> &nbsp;
                        <a href="delete-product?pid=${p.pid}" class="btn btn-danger">DELETE</a>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
