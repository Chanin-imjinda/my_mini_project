<?php 
    session_start();

    if(!isset($_SESSION['user_name'])) {
        $_SESSION['msg'] = "You must log in first";
        header('location: login.php');
    }

    if(!isset($_GET['logout'])) {
        session_destroy();
        unset($_SESSION['user_name']);
        header('location: login.php');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>
</head>
<body>
    <div class="content">

        <?php if (isset($_SESSION['success'])) : ?>
            <div class="success">
                <h3>
                    <?php 
                        echo $_SESSION['success'];
                        unset($_SESSION['success']);
                    ?>
                </h3>
            </div>
        <?php endif ?>

        <?php if (isset($_SESSION['user_name']))?>
            <p>Welcome <strong> <?php echo $_SESSION['user_name'];?></strong></p>
            <p><a href="index.php?logout='1'" style="color: red;">logout</a></p>
        <?php endif ?>
    </div>
</body>
</html>