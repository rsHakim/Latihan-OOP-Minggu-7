<?php 

include 'Controller/Database.php';
include 'Controller/News.php';
include 'Controller/Comment.php';

$news = new \Controller\News;
$comment = new \Controller\Comment;
$category = new \Controller\News;

require __DIR__."/vendor/autoload.php";
\Cloudinary::config(array( 
  "cloud_name" => "risman99", 
  "api_key" => "775546149389642", 
  "api_secret" => "JtKsDFCgl616TRcfGgRdMrxBHkE" 
));
?>

<!DOCTYPE html>
<html lang="en">
  <head>
  <?php include 'components/head.php' ?>
  </head>
  <body>
    <!-- Navigation -->
    <?php include 'components/nav.php' ?>

    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
          <?php 
            if(isset($_GET['detail_post'])){ 
              include 'pages/detail_post.php';
              if($_POST) $comment->insertComment($_POST); 
            } else { 
              include 'pages/home.php'; 
            }
          ?>        
        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card my-4">
          <?php include 'components/search.php' ?>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
          <?php include 'components/categorywidget.php' ?>
          </div>

          <!-- Side Widget -->
          <?php include 'components/sidewidget.php' ?>
        </div>

      </div><!-- /.row -->
    </div><!-- /.container -->
    
    <!-- Footer -->
    <?php include 'components/footer.php' ?>
    <!-- Bootstrap core JavaScript -->
    <?php include 'components/js.php' ?>
  </body>
</html>
