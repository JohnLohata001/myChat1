<?php
  session_start();

    $username ="";
    $email = "";
    $errors = array();

    // connect to the database

    $db = mysqli_connect('localhost','root','','registration');

    // if the register button is click
    if(isset($_POST['register'])){
        $username = ($_POST['username']);
        $email = ($_POST['email']);
        $password_1 = ($_POST['password_1']);
        $password_2 = ($_POST['password_2']);

      // ensure that form field is cliked

        if(empty($username)){
          array_push($errors, "Username is required"); 
        }
        if(empty($email)){
            array_push($errors, "Email is required"); 
          }
        if(empty($password_1)){
          array_push($errors, "Password is required"); 
        }
        if($password_1 != $password_2){
            array_push($errors, "The two password do not match");
        } 
        //there is not errors, save user to database

        if(count($errors) == 0){
            $password = md5($password_1);
          $sql = "INSERT INTO users (username, email, password)
                    VALUES('$username','$email','$password')";
          mysqli_query($db, $sql);
          $_SESSION['username'] = $username;
          $_SESSION['success'] = "You are now looged in";
          header('location: index.php');
        }
    }
  
    // log user in form login page
 
    if(isset($_POST['login'])){
      $username = ($_POST['username']);
      $password = ($_POST['password']);

        // ensure that form field is cliked

      if(empty($username)){
        array_push($errors, "Username is required"); 
      }
      if(empty($password)){
        array_push($errors, "Password is required"); 
      }
      if(count($errors) == 0){
        $password = md5($password); // encrypt password before comparing with that form database
        $query = "SELECT * FROM users  WHERE username='$username' AND password='$password'";
        $result = mysqli_query($db, $query);

        if(mysqli_num_rows($result) == 1){
            // log user in
          $_SESSION['username'] = $username;
          $_SESSION['success'] = "You are now logged in";
            header('location: main.php');
        }else{
          array_push($errors, "wrong username/passwrod combinaison"); 
          
        }
      }
       
  
}


    //logout
    if (isset($_GET['logout'])){
      session_destroy();
      unset($_SESSION['username']);
      header('location: login.php');
    }

?>