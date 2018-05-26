  <!-- Title -->
  <?php $result = $news->getPostsDetail($_GET['detail_post']) ?>
  <h1 class="mt-4"><?php echo $result['title'] ?></h1>
  <!-- Author -->
  <p class="lead">by <a href="#">Risman Hakim</a></p>
  <hr>
  <!-- Date/Time -->
  <p><?php echo $result['date_post'] ?></p>
  <hr>
  <!-- Preview Image -->
  <!-- <img class="img-fluid rounded" src="http://placehold.it/900x300" alt=""> -->
  <?php 
    echo cl_image_tag($result['image_news'], 
    array('class' => 'card-img-top','width' => 750,'height' =>300)) 
  ?>
  <hr>

  <!-- Post Content -->
  <p class="lead"><?php echo $result['news'] ?></p>
  <hr>
  <!-- Comments Form -->
  <div class="card my-4">
    <h5 class="card-header">Leave a Comment:</h5>
    <div class="card-body">
      <form method="post">
      	<div class="form-group">
      		<input type="text" class="form-control" name="username" placeholder="Your Name">
      	</div>
        <div class="form-group">
        	<textarea class="form-control" rows="3" name="reply" placeholder="Your Comments..."></textarea>
        </div>
        <input type="hidden" value="<?php echo $result['id'] ?>" name="post_id">
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </div>

  <!-- Single Comment -->
  <?php if($all_comments = $comment->getComment($result['id'])) { ?>
  <?php foreach($all_comments as $row_comment) { ?>
  <div class="media mb-4">    
    <img class="d-flex mr-3 rounded-circle" src="https://bit.ly/2J1a8XU" width="50" alt="">
    <div class="media-body">
      <h5 class="mt-0"><?php echo $row_comment['username'] ?></h5>
      <p><?php echo $row_comment['reply'] ?></p>
    </div>
  </div>
  <?php } ?>
  <?php } ?>