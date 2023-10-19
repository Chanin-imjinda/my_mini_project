<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Register</title>
      <link rel="stylesheet" href="css/style.css">
   </head>
   <body style="background-image : url(img/background.png); background-size: cover">
   
      <div class="wrapper">
         <div class="title">
            Register
         </div>
         <form action="RegisterDB.php" method="post">
            <div class="field">
               <input name="user_name" type="text" required>
               <label>Username</label>
            </div>
            <div class="field">
               <input name="email_user" type="email" required>
               <label>Email Address</label>
            </div>
            <div class="field">
               <input name="password" type="password" required>
               <label>Password</label>
            </div>
            <div class="field">
                <input name="password" type="password" required>
                <label>Confrim your Password</label>
             </div><br>
            <div class="field">
               <input type="submit" value="Login" >
            </div>
            <div class="signup-link">
               Already a member? <a href="login.php" name="reg_user">login</a>
            </div>
         </form>
      </div>
   </body>
</html>