<h1 class="my-4">Page Heading
	<small>Secondary Text</small>
</h1>
  <!-- Blog Post -->
  <?php foreach($news->getPosts() as $row) { ?>
  <div class="card mb-4">
    <!-- <img class="card-img-top" src="" alt="Card image cap"> -->
    <?php echo cl_image_tag($row['image_news'], array('class' => 'card-img-top','width' => 750,'height' =>300)) ?>
    <div class="card-body">
      <h2 class="card-title"><?php echo $row['title'] ?></h2>
      <p class="card-text"><?php echo substr($row['news'], 0, 150) ?>...</p>
      <a href="?detail_post=<?php echo $row['id'] ?>" class="btn btn-primary">Read More &rarr;</a>
    </div>
    <div class="card-footer text-muted">
      <?php echo $row['date_post'] ?>
      <a href="#">Risman Hakim</a>
    </div>
  </div>
  <?php } ?>

  <!-- Pagination -->
  <ul class="pagination justify-content-center mb-4">
    <li class="page-item">
      <a class="page-link" href="#">&larr; Older</a>
    </li>
    <li class="page-item disabled">
      <a class="page-link" href="#">Newer &rarr;</a>
    </li>
  </ul>