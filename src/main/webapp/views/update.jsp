<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        /* Navbar Styling */
        .navbar {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 10px 20px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-size: 22px;
            font-weight: bold;
            color: white;
            text-decoration: none;
            margin-right: 30px;
        }

        .navbar-link {
            font-size: 18px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .navbar-link:hover {
            color: #ffc107;
        }

        /* Responsive Navbar */
        @media (max-width: 768px) {
            .navbar-links {
                flex-direction: column;
                background-color: rgba(0, 0, 0, 0.9);
                position: absolute;
                top: 50px;
                left: 0;
                right: 0;
                display: none;
            }

            .navbar-links.active {
                display: flex;
            }
        }

        /* Background Styling */
        body {
            background: url('https://www.shutterstock.com/image-illustration/elegant-futuristic-light-reflection-grid-600nw-536582824.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Form Container */
        .register {
            margin-top: 80px;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .register-left {
            text-align: center;
            background-color: #007bff;
            color: white;
            padding: 20px;
            border-radius: 8px 0 0 8px;
        }

        .register-right {
            padding: 20px;
        }

        .form-control {
            border: 1px solid #ced4da;
            border-radius: 4px;
            padding: 10px;
        }

        .btn-success {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="navbar-links">
            <a href="/" class="navbar-link">Home</a>
            <a href="http://localhost:8081/views/add.jsp" class="navbar-link">Add Product</a>
            <a href="http://localhost:8081/views/display.jsp" class="navbar-link">Display Products</a>
        </div>
    </nav>

    <!-- Register Section -->
    <div class="container register">
        <div class="row">
            <div class="col-md-3 register-left">
                <h3>Welcome To Upadte Page</h3>
                <p>You are 30 seconds away from earning your own money!</p>
            </div>
            <div class="col-md-9 register-right">
                <h3 class="register-heading" style="text-align: center; margin-bottom: 20px;">Update Product Details</h3>
                <form action="/update-product" method="post">
                    <div class="row register-form">
                        <div class="col-md-6 offset-md-3">
                            <div class="form-group">
                                <input type="number" name="pid" class="form-control" placeholder="Product Id *" value="${p != null ? p.pid : ''}" readonly>
                            </div>
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="Product Name *" value="${p != null ? p.name : ''}" required>
                            </div>
                            <div class="form-group">
                                <input type="number" name="price" class="form-control" placeholder="Price *" value="${p != null ? p.price : ''}" required>
                            </div>
                            <div class="form-group">
                                <input type="number" name="quantity" class="form-control" placeholder="Quantity *" value="${p != null ? p.quantity : ''}" required>
                            </div>
                            <div class="form-group">
                                <input type="text" name="category" class="form-control" placeholder="Category *" value="${p != null ? p.category : ''}" required>
                            </div>
                            <button type="submit" class="btn btn-success">Update Record</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
