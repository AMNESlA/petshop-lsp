<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="#">

  <title><?php echo $title; ?></title>

  <!-- Bootstrap core CSS -->
  <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
  <link href="assets/bootstrap/css/datetimepicker.css" rel="stylesheet">

  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug 
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">-->

  <!-- Custom styles for this template -->
  <link href="assets/css/navbar-fixed-top.css" rel="stylesheet">
  <link href="assets/css/full-slider.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
  <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>-->

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

  <!-- Fixed navbar -->
  <nav class="navbar navbar-default navbar-fixed-top navbar-blue">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">PETSHOP</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="index.php">Home</a></li>
          <li><a href="menu.php">Produk</a></li>
          <?php if (!empty($_SESSION['iam_user'])) { ?>
            <?php
            $user = mysql_fetch_object(mysql_query("select * from user where id='$_SESSION[iam_user]'"));
            ?>
            <li><a href="keranjang.php">keranjang</a></li>
            <li class="dropdown">

              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hi <?php echo $user->nama; ?> <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="profile.php">Profil</a></li>
                <li><a href="logout.php">Logout</a></li>
              </ul>
            </li>
          <?php } else { ?>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login/Register <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="login.php">Login</a></li>
                <li><a href="register.php">Register</a></li>
              </ul>
            </li>
          <?php } ?>


        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </nav>

  <?php if ('http://' . $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'] == $url . 'index.php') { ?>
    <div class="container">

      <!-- Full Page Image Background Carousel Header -->
      <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>

        <!-- Wrapper for Slides -->
        <!-- Set the first background image using inline CSS below. -->
        <div class="fill" style="background-image:url('<?php $url ?>assets/img/tt.png');"></div>


      </header>
    </div> <!-- /container -->
  <?php } ?>

  <div class="container" style="margin-top:20px;">
    <div class="row">
      <div class="col-md-12">
      </div>
    </div>