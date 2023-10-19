<?php
    session_start();
    include('conn.php');

    $errors = array();

    if (isset($_POST['reg_user'])) {
        $username = mysqli_real_escape_string($conn, $_POST['user_name']);
        $email = mysqli_real_escape_string($conn, $_POST['email_user']);
        $password_1 = mysqli_real_escape_string($conn, $_POST['password_1']);
        $password_2 = mysqli_real_escape_string($conn, $_POST['password_2']);

        if (empty($username)){
            array_push($errors,"Username is required");
        }
        if (empty($email)){
            array_push($errors,"Email is required");
        }  
        if (empty($password_1)){
            array_push($errors,"Password is required");
        }
        if (empty($password_2)){
            array_push($errors,"The two password do not match");
        }

        $user_check_query = "SELECT * FROM user WHERE user_name = '$username' OR email_user = '$email'";
        $query = mysqli_query($conn,$user_check_query);
        $result = mysqli_fetch_assoc($query);

        if ($result) {
            if ($result['user_name'] === $username){
                array_push($errors, "Username already exists");
            }
            if ($result['email'] === $email) {
                array_push($errors,"Email");
            }
        }

        if (count($errors) == 0){
            $password = md5($password_1);

            $sql = "INSERT INTO user (user_name,email_user,password) VALUES ('$username','$email','$password')";
            mysqli_query($conn, $sql);

            $_SESSION['user_name'] = $username;
            $_SESSION['success'] = "You are now logged in";
            header('location: index.php');
        }
    }   
?>