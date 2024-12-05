<!DOCTYPE html>
<html lang="en">

    <head>
        <title><?php echo $seoTitle; ?> | <?php echo $seoHeader; ?></title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <meta name="description" content="<?php echo $seoDescription; ?>" />
        <meta name="keywords" content="<?php echo $seoKeywords; ?>" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <link rel="icon" type="image/png" href="image/Logo-Icon.png">
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/font-awesome.css" />
        <link rel="stylesheet" href="css/custom.css" />
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scrollspy.js"></script>
        <script src="js/disable.js"></script>
    </head>
    
    <body id="page-top" class="index">
<?php include_once("class/google.analyticstracking.php"); ?>
        
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                	<a class="navbar-brand" href="#"><img src="image/header.png" /></a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#aboutsusNourprocess">ABOUT US & OUR TEAM</a></li>
                        <li><a href="#services">SERVICES</a></li>
                        <li><a href="#contactus">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /.Navigation -->