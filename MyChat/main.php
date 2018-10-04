<?php include('server.php'); ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Main page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>
   <header>
   <?php if(isset($_SESSION['username'])): ?>
        <div class="main-header">
           <article class="welcome"><p> Welcome <strong><?php echo $_SESSION['username']; ?> </strong><br>stay in touch</p></article> 
           <article class="menu"><p><a href="index.php?logout='1'" style="color:red; ">Logout</a></p></article> 
        <?php  //session_destroy(); unset($_SESSION['username']); header('location: login.php'); ?>
        </div>
    <?php endif ?>
   </header> 
   <main class="member-page">
        <div class="space-picture">
            <article class="picture">
            <div></div>
            <!-- <div class="file-btn"><input type="file" name="file" id="file"></div> -->

            </article>
            <!-- <form action="" method="post" name="form2"> -->
                
            <!-- </form> -->
            <article class="title-name">
                 <?php if(isset($_SESSION['username'])): ?>
                    <div class="main-title-head">
                        <article class="in-touch"><p><strong><?php echo $_SESSION['username']; ?> </strong>stay in touch</p></article>          
                    </div>
                <?php endif ?>
            </article>
        </div>

   </main>
   <footer>
   </footer>
</body>
</html>