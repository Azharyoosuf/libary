<?php
session_start();
include('includes/config.php'); // Includes database configuration

// Reset session if already logged in
if (isset($_SESSION['alogin'])) {
    $_SESSION['alogin'] = '';
}

// Process login if form is submitted
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Query to fetch user details from the database
    $sql = "SELECT id, FullName, AdminEmail, UserName, Password FROM admin WHERE UserName = :username";
    $query = $dbh->prepare($sql);
    $query->bindParam(':username', $username, PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetch(PDO::FETCH_OBJ);

    // Verify the password if the user is found
    if ($result && $password === $result->Password) { // Direct comparison
        $_SESSION['alogin'] = $username;
        $_SESSION['adminId'] = $result->id; // Store admin ID in session if needed
        $_SESSION['fullName'] = $result->FullName; // Store full name in session if needed
        echo "<script type='text/javascript'> document.location = 'admin/dashboard.php'; </script>";
    } else {
        echo "<script>alert('Invalid Details');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Online Library Management System - Admin Login</title>
    <!-- Bootstrap CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="assets/css/style.css" rel="stylesheet">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">
</head>
<body>
    <!-- Include header section -->
    <?php include('includes/header.php'); ?>

    <div class="content-wrapper">
        <div class="container">
            <div class="row pad-botm">
                <div class="col-md-12">
                    <h4 class="header-line">ADMIN LOGIN FORM</h4>
                </div>
            </div>

            <!-- Login Panel -->
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            LOGIN FORM
                        </div>
                        <div class="panel-body">
                            <form role="form" method="post">
                                <div class="form-group">
                                    <label>Enter Username</label>
                                    <input class="form-control" type="text" name="username" autocomplete="off" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="form-control" type="password" name="password" autocomplete="off" required>
                                </div>
                                <button type="submit" name="login" class="btn btn-info">LOGIN</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Login Panel End -->
        </div>
    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
